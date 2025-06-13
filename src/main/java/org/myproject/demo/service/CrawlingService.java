package org.myproject.demo.service;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.myproject.demo.repository.CrawlingRepository;
import org.myproject.demo.vo.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CrawlingService {

    @Autowired
    private CrawlingRepository crawlingRepository;

    public List<Team> teamList() {
        return crawlingRepository.teamList();
    }

    public Team teamListLogo(int id) {
        return crawlingRepository.teamListLogo(id);
    }

    public void crawling() {
        try {
            String url = "https://map.kakao.com/";
            Document doc = Jsoup.connect(url).get();

            Elements elements = doc.select(".tool.map.copymap");
            System.out.println(elements);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
