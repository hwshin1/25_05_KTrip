package org.myproject.demo.config;

import org.myproject.demo.interceptor.BeforeInterceptor;
import org.myproject.demo.interceptor.NeedLoginInterceptor;
import org.myproject.demo.interceptor.NeedLogoutInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
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

        InterceptorRegistration ir;

        // 모든 요청이 들어오기 전에 before 인터셉터 활용하겠다.
        ir = registry.addInterceptor(beforeInterceptor);
        ir.addPathPatterns("/**");
        ir.addPathPatterns("/favicon.ico");
        ir.excludePathPatterns("/error");

        // 로그인을 해야 함
        ir = registry.addInterceptor(needLoginInterceptor);
        ir.addPathPatterns("/review/write");
        ir.addPathPatterns("/review/doWrite");
        ir.addPathPatterns("/review/modify");
        ir.addPathPatterns("/review/doModify");
        ir.addPathPatterns("/review/doDelete");
        ir.addPathPatterns("/user/doLogout");
        ir.addPathPatterns("/user/mypage");

        //로그아웃을 해야 함
        ir = registry.addInterceptor(needLogoutInterceptor);
        ir.addPathPatterns("/user/join");
        ir.addPathPatterns("/user/doJoin");
        ir.addPathPatterns("/user/login");
        ir.addPathPatterns("/user/doLogin");
    }
}
