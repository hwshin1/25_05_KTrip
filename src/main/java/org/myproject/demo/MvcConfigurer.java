package org.myproject.demo;

import org.myproject.demo.interceptor.BeforeInterceptor;
import org.myproject.demo.interceptor.NeedLoginInterceptor;
import org.myproject.demo.interceptor.NeedLogoutInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfigurer implements WebMvcConfigurer {

    // BeforeInterceptor 연결
    @Autowired
    BeforeInterceptor beforeInterceptor;

    // NeedLoginInterceptor 연결
    @Autowired
    NeedLoginInterceptor needLoginInterceptor;

    // NeedLogoutInterceptor 연결
    @Autowired
    NeedLogoutInterceptor needLogoutInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 모든 요청이 들어오기 전에 before 인터셉터 활용하겠다.
        registry.addInterceptor(beforeInterceptor).addPathPatterns("/**");

        registry.addInterceptor(needLoginInterceptor).addPathPatterns("/review/write")
                .addPathPatterns("/review/doWrite").addPathPatterns("/review/modify")
                .addPathPatterns("/review/doModify").addPathPatterns("/review/doDelete")
                .addPathPatterns("/user/doLogout");

        registry.addInterceptor(needLogoutInterceptor).addPathPatterns("/user/join")
                .addPathPatterns("/user/doJoin").addPathPatterns("/user/login")
                .addPathPatterns("/user/doLogin");
    }
}
