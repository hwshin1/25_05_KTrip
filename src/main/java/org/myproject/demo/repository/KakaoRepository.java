package org.myproject.demo.repository;

import org.myproject.demo.vo.Kakao;
import org.springframework.data.jpa.repository.JpaRepository;

public interface KakaoRepository extends JpaRepository<Kakao, Long> {
}
