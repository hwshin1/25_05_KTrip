package org.myproject.demo.vo;

import java.io.IOException;

import org.myproject.demo.service.UserService;
import org.myproject.demo.util.Ut;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.Getter;
import lombok.Setter;

@Component
@Scope(value = "request", proxyMode = ScopedProxyMode.TARGET_CLASS)
@Getter
@Setter
public class Rq {

    private final HttpServletRequest req;
    private final HttpServletResponse resp;
    private final HttpSession session;

    private boolean isLogined = false;
    private int loginedUserId = 0;

    @Getter
    private User loginedUser;

    @Getter
    private User loginedUserTeam;

    public Rq(HttpServletRequest req, HttpServletResponse resp, UserService userService) {
        this.req = req;
        this.resp = resp;
        this.session = req.getSession();

        if (session.getAttribute("loginedUserId") != null) {
            isLogined = true;
            loginedUserId = (int) session.getAttribute("loginedUserId");
            loginedUser = userService.getUserById(loginedUserId);
            loginedUserTeam = userService.getUserTeamById(loginedUserId);
        }

        this.req.setAttribute("rq", this);
    }

    public void printHistoryBack(String msg) throws IOException {
        resp.setContentType("text/html; charset=UTF-8");
        println("<script>");
        if (!Ut.isEmpty(msg)) {
            println("alert('" + msg.replace("'", "\\'") + "');");
        }
        println("history.back();");
        println("</script>");
        resp.getWriter().flush();
        resp.getWriter().close();
    }

    public void printReplaceBack(String msg, String replaceUrl) throws IOException {
        resp.setContentType("text/html; charset=UTF-8");
        println("<script>");
        if (!Ut.isEmpty(msg) && !Ut.isEmpty(replaceUrl)) {
            println("alert('" + msg.replace("'", "\\'") + "');");
            println("location.replace('" + replaceUrl.replace("'", "\\'") + "');");
        }
        if (!Ut.isEmpty(msg) && Ut.isEmpty(replaceUrl)) {
            println("alert('" + msg.replace("'", "\\'") + "');");
            println("history.back();");
        }
        println("</script>");
        resp.getWriter().flush();
        resp.getWriter().close();
    }

    private void println(String str) throws IOException {
        print(str + "\n");
    }

    private void print(String str) throws IOException {
        resp.getWriter().append(str);
    }

    public void logout() {
        session.removeAttribute("loginedUserId");
        session.removeAttribute("loginedUser");
    }

    public void login(User user) {
        session.setAttribute("loginedUserId", user.getId());
        session.setAttribute("loginedUser", user);
    }

    public void initBeforeActionInterceptor() {
        System.err.println("initBeforeActionInterceptor 실행됨");
    }

    public String historyBackOnView(String msg) {
        req.setAttribute("msg", msg);
        req.setAttribute("historyBack", true);
        return "common/js";
    }

    public String getCurrentUri() {
        String currentUri = req.getRequestURI();
        String queryString = req.getQueryString();

        System.out.println(currentUri);
        System.out.println(queryString);

        if (currentUri != null && queryString != null) {
            currentUri += "?" + queryString;
        }

        return currentUri;
    }
}
