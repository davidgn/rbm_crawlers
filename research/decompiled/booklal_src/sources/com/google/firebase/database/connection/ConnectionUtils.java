package com.google.firebase.database.connection;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class ConnectionUtils {
    public static void hardAssert(boolean z4) {
        hardAssert(z4, "", new Object[0]);
    }

    public static Long longFromObject(Object obj) {
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            return (Long) obj;
        }
        return null;
    }

    public static String pathToString(List<String> list) {
        if (list.isEmpty()) {
            return "/";
        }
        StringBuilder sb = new StringBuilder();
        boolean z4 = true;
        for (String str : list) {
            if (!z4) {
                sb.append("/");
            }
            sb.append(str);
            z4 = false;
        }
        return sb.toString();
    }

    public static List<String> stringToPath(String str) {
        ArrayList arrayList = new ArrayList();
        String[] split = str.split("/", -1);
        for (int i = 0; i < split.length; i++) {
            if (!split[i].isEmpty()) {
                arrayList.add(split[i]);
            }
        }
        return arrayList;
    }

    public static void hardAssert(boolean z4, String str, Object... objArr) {
        if (!z4) {
            throw new AssertionError("hardAssert failed: ".concat(String.format(str, objArr)));
        }
    }
}
