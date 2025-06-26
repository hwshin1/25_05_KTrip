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
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
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
            int savedTeamCount = crawlingRepository.countTeams();

            if (savedTeamCount >= 12) {
                System.out.println("이미 팀이 저장되어 있습니다.");
                return teamList;
            }

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
    public List<Map<String, String>> crawlingNotice(String regionName) {
        List<Map<String, String>> restaurants = new ArrayList<>();

        System.setProperty("webdriver.chrome.driver", "./chromedriver.exe");

        ChromeOptions options = new ChromeOptions();
        options.addArguments("--remote-allow-origins=*");
        WebDriver driver = new ChromeDriver(options);

        try {
            String searchKeyword = regionName + " 음식점";
            driver.get("https://map.kakao.com/link/search/" + URLEncoder.encode(searchKeyword, StandardCharsets.UTF_8));

            WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
            wait.until(ExpectedConditions.presenceOfElementLocated(By.cssSelector("ul#info\\.search\\.place\\.list")));

            while (true) {
                List<WebElement> items = driver.findElements(By.cssSelector("ul#info\\.search\\.place\\.list > li.PlaceItem"));

                for (WebElement item : items) {
                    try {
                        String category = item.findElement(By.cssSelector("span.subcategory")).getText();

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
                        // 항목 누락 시 무시
                    }
                }

                try {
                    WebElement nextBtn = driver.findElement(By.cssSelector("a#info\\.search\\.page\\.next"));
                    if (nextBtn.getAttribute("class").contains("off")) break;
                    nextBtn.click();
                    Thread.sleep(2000);
                } catch (NoSuchElementException e) {
                    break;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            driver.quit();
        }

        return restaurants;
    }
}
