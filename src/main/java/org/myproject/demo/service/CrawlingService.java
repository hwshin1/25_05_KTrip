package org.myproject.demo.service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.myproject.demo.repository.CrawlingRepository;
import org.myproject.demo.vo.Team;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.FileWriter;
import java.time.Duration;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class CrawlingService {

    @Autowired
    private CrawlingRepository crawlingRepository;

    private static final String BASE_URL = "https://www.kleague.com";
    private static final String TARGET_URL = BASE_URL + "/index.do";

    public List<Team> webCrawling() {
        List<Team> teamList = new ArrayList<>();

        try {
            Document doc = Jsoup.connect(TARGET_URL).get();
            Elements teamElements = doc.select("ul.f-wrap li");

            for (Element li : teamElements) {
                Element aTag = li.selectFirst("a");
                Element imgTag = li.selectFirst("img");

                if (aTag == null || imgTag == null) continue;

                String team_logo = formatUrl(imgTag.attr("src"));
                String team_name = aTag.attr("title");
                String team_homepage = formatUrl(aTag.attr("href"));

                boolean exists = crawlingRepository.existsTeam(team_name, team_homepage);

                //존재하면 저장 x
                if (exists) {
                    continue;
                }

                crawlingRepository.webCrawling(team_logo, team_name, team_homepage);

                Team team = new Team(team_logo, team_name, team_homepage);

                teamList.add(team);
            }

        } catch (Exception e) {
            System.err.println("크롤링 중 오류 발생: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("크롤링 실패", e);
        }

        return teamList;
    }

    // 상대 경로일 경우 BASE_URL 붙이기
    private String formatUrl(String url) {
        if (url == null || url.isEmpty()) return "";
        if (url.startsWith("https")) return url;
        if (url.startsWith("//")) return "https:" + url;
        return BASE_URL + url;
    }

    // map 크롤링
    public void crawlingNotice() {
        System.setProperty("webdriver.chrome.driver", "./chromedriver.exe");

        // 크롬 옵션 설정
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--remote-allow-origins=*");
        WebDriver driver = new ChromeDriver(options);

        try {
            //페이지 접속
            driver.get("https://map.kakao.com/link/search/대전월드컵경기장");

            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
            wait.until(ExpectedConditions.presenceOfElementLocated(By.cssSelector("ul#info\\.search\\.place\\.list")));

            List<WebElement> items = driver.findElements(By.cssSelector("ul#info\\.search\\.place\\.list > li.PlaceItem"));
            List<Map<String, String>> restaurants = new ArrayList<>();

            for (WebElement item : items) {
                try {
                    String category = item.findElement(By.cssSelector("span.txt_around")).getText();

                    System.out.println(category);

                    if (!category.contains("음식점")) {
                        continue; // 스킵
                    }

                    Map<String, String> data = new LinkedHashMap<>();
                    data.put("name", item.findElement(By.cssSelector("a.link_name")).getText());
                    data.put("category", category);
                    data.put("address", item.findElement(By.cssSelector("div.addr > p[title]")).getAttribute("title"));

                    try {
                        String rating = item.findElement(By.cssSelector("em.num")).getText();
                        data.put("rating", rating);
                    } catch (Exception e) {
                        data.put("rating", "없음");
                    }

                    try {
                        String detailUrl = item.findElement(By.cssSelector("a.moreview")).getAttribute("href");
                        data.put("detail_url", detailUrl);
                    } catch (Exception e) {
                        data.put("detail_url", "없음");
                    }

                    restaurants.add(data);
                } catch (NoSuchElementException e) {
                    // subcategory가 없으면 무시
                }
            }

            // JSON 저장
            Gson gson = new GsonBuilder().setPrettyPrinting().create();
            try (FileWriter writer = new FileWriter("restaurants_nearby.json")) {
                gson.toJson(restaurants, writer);
                System.out.println(":) 음식점 정보가 저장되었습니다: restaurants_nearby.json");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            driver.quit();
        }

        // WebDriver 종료
        driver.quit();
    }
}
