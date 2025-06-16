package org.myproject.demo.util;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

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

    public static String sha256(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hash = md.digest(input.getBytes("UTF-8"));
            StringBuffer hexString = new StringBuffer();

            for (int i = 0; i < hash.length; i++) {
                String hex = Integer.toHexString(0xff & hash[i]);
                if (hex.length() == 1)
                    hexString.append('0');
                hexString.append(hex);
            }

            return hexString.toString();
        } catch (NoSuchAlgorithmException | UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getTempPassword(int length) {
        int index = 0;
        char[] charArr = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f',
                'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };

        StringBuffer sb = new StringBuffer();

        for (int i = 0; i < length; i++) {
            index = (int) (charArr.length * Math.random());
            sb.append(charArr[index]);
        }

        return sb.toString();
    }

    public static boolean isEmpty(Object obj) {
        if (obj == null) {
            return true;
        }

        if (obj instanceof String) {
            return ((String) obj).trim().isEmpty();
        }

        if (obj instanceof Map) {
            return ((Map<?, ?>) obj).isEmpty();
        }

        if (obj.getClass().isArray()) {
            return Array.getLength(obj) == 0;
        }

        return false;
    }
}
