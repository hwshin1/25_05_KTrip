package org.myproject.demo.vo;

import java.io.IOException;

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
    private Long loginedMemberId;

    @Getter
    private Member loginedMember;

    @Getter
    private Member loginedMemberTeam;

    public Rq(HttpServletRequest req, HttpServletResponse resp) {
        this.req = req;
        this.resp = resp;
        this.session = req.getSession();

        if (session.getAttribute("loginedMemberId") != null) {
            isLogined = true;
            loginedMemberId = (Long) session.getAttribute("loginedMemberId");
            loginedMember = (Member) session.getAttribute("loginedMember");
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
        session.removeAttribute("loginedMemberId");
        session.removeAttribute("loginedMember");
    }

    public void login(Member member) {
        session.setAttribute("loginedMemberId", member.getId());
        session.setAttribute("loginedMember", member);
    }

    public void initBeforeActionInterceptor() {
        System.err.println("initBeforeActionInterceptor 실행됨");
    }

    public String historyBackOnView(String msg) throws IOException {
        resp.setContentType("text/html; charset=UTF-8");

        StringBuilder sb = new StringBuilder();
        sb.append("<script>");
        if (msg != null && !msg.trim().isEmpty()) {
            sb.append("alert('").append(msg.replace("'", "\\'")).append("');");
        }
        sb.append("history.back();");
        sb.append("</script>");

        resp.getWriter().write(sb.toString());
        resp.getWriter().flush();
        resp.getWriter().close();
        return msg;
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
