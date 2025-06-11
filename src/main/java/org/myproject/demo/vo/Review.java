package org.myproject.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Review {

    private int id;
    private String regDate;
    private String updateDate;
    private String title;
    private String body;
    private boolean like;
    private float rating;
}
