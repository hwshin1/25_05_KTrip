package org.myproject.demo.vo;

import jakarta.persistence.Entity;
import lombok.*;
import lombok.experimental.SuperBuilder;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
@ToString(callSuper = true)
public class Review extends BaseEntity {

    private int userId;
    private int boardId;
    private String title;
    private String body;
    private float rating;

    private String extra_writer;

    private boolean userCanModify;
    private boolean userCanDelete;
}
