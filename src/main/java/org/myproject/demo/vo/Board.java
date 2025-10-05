package org.myproject.demo.vo;

import jakarta.persistence.Entity;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
@ToString(callSuper = true)
public class Board extends BaseEntity {

    private String code;
    private String name;
    private boolean delStatus;
    private LocalDateTime delDate;
}
