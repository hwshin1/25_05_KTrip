package org.myproject.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Review {
    private int id;
    private String regDate;
    private String updateDate;
    private int userId;
    private String title;
    private String body;
    private float rating;
}
