package org.myproject.demo.vo;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDateTime;
import java.util.LinkedHashMap;
import java.util.Map;

import static jakarta.persistence.GenerationType.IDENTITY;

@MappedSuperclass
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString(exclude = "extra")
@SuperBuilder
@EntityListeners(AuditingEntityListener.class)
public class BaseEntity {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Long id;

    @CreatedDate
    private LocalDateTime regDate;
    @LastModifiedDate
    private LocalDateTime updateDate;

    @Transient
    @Builder.Default
    // 이 필드는 DB에 저장 안함 => 임시 데이터 저장용
    private Map<String, Object> extra = new LinkedHashMap<>();

    // Id 만으로 엔터티 객체를 임시 생성
    // 쿼리에서 id 참조용
    public BaseEntity(Long id) {
        this.id = id;
    }
}
