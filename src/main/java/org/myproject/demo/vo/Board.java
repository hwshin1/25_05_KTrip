package org.myproject.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {
    private int id;
    private LocalDateTime regDate;
    private LocalDateTime updateDate;
    private String code;
    private String name;
    private boolean delStatus;
    private LocalDateTime delDate;
}
