package org.myproject.demo.util;

public class Ut {

    public static boolean isEmptyOrNull(String str) {
        return str == null || str.trim().isEmpty();
    }

    public static String f(String str, Object... args) {
        return String.format(str, args);
    }

    public static String jsReplace(String resultCode, String msg, String replaceUrl) {

        if (resultCode == null) {
            return resultCode = "";
        }

        if (msg == null) {
            return msg = "";
        }

        if (replaceUrl == null) {
            return replaceUrl = "/";
        }

        String resultMsg = resultCode + "/" + msg;

        return Ut.f("""
                <script>
                    let resultMsg = '%s'.trim();
                    
                    if (resultMsg.length > 0) {
                        alert(resultMsg);
                    }
                    
                    location.replace('%s');
                </script>
                """, resultMsg, replaceUrl);
    }

    public static String jsHistoryBack(String resultCode, String msg) {
        if (resultCode == null) {
            return resultCode = "";
        }

        if (msg == null) {
            return msg = "";
        }

        String resultMsg = resultCode + "/" + msg;

        return Ut.f("""
                <script>
                    let  resultMsg = '%s'.trim();
                    if (resultMsg.length > 0) {
                        alert(resultMsg);
                    }
                    history.back();
                </script>
        """,  resultMsg);
    }
}
