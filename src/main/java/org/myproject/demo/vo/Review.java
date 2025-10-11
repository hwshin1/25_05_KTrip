package org.myproject.demo.vo;

import jakarta.persistence.Entity;
import jakarta.persistence.Transient;
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

    private int memberId;
    private int boardId;
    private String title;
    private String body;
    private float rating;

    @Transient
    private String extra_writer;

    @Transient
    private boolean userCanModify;
    @Transient
    private boolean userCanDelete;
}
