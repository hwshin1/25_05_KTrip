package org.myproject.demo.service;

import org.myproject.demo.repository.CrawlingRepository;
import org.myproject.demo.vo.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CrawlingService {

    @Autowired
    private CrawlingRepository crawlingRepository;

    public Team teamListLogo(int id) {
        return crawlingRepository.teamListLogo(id);
    }
}
