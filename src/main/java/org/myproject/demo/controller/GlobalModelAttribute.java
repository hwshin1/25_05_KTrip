package org.myproject.demo.controller;

import org.myproject.demo.vo.Rq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class GlobalModelAttribute {

    @Autowired
    private Rq rq;

    @ModelAttribute("rq")
    public Rq rq() {
        return rq;
    }
}
