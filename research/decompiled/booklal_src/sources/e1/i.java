package e1;

import android.net.Uri;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public abstract /* synthetic */ class i {
    public static String a(int i, String str) {
        return str + i;
    }

    public static String b(int i, String str, StringBuilder sb) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    public static String c(long j5, String str) {
        return str + j5;
    }

    public static String d(Uri uri, String str) {
        return str + uri;
    }

    public static String e(String str, String str2) {
        return str + str2;
    }

    public static StringBuilder f(int i, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder g(String str, int i, String str2, int i4, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        sb.append(i4);
        sb.append(str3);
        return sb;
    }

    public static ArrayList h(int i, HashMap hashMap, ArrayList arrayList, int i4, String str) {
        hashMap.put(Integer.valueOf(i), arrayList);
        ArrayList arrayList2 = new ArrayList(i4);
        arrayList2.add(str);
        return arrayList2;
    }

    public static /* synthetic */ void i(int i) {
        if (i != 0) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        kotlin.jvm.internal.i.j(nullPointerException, kotlin.jvm.internal.i.class.getName());
        throw nullPointerException;
    }

    public static void j(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    public static /* synthetic */ void k(int i, String str) {
        if (i != 0) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(kotlin.jvm.internal.i.i(str));
        kotlin.jvm.internal.i.j(nullPointerException, kotlin.jvm.internal.i.class.getName());
        throw nullPointerException;
    }

    public static /* synthetic */ String l(int i) {
        switch (i) {
            case 1:
                return "NONE";
            case 2:
                return "LEFT";
            case 3:
                return "TOP";
            case 4:
                return "RIGHT";
            case 5:
                return "BOTTOM";
            case 6:
                return "BASELINE";
            case 7:
                return "CENTER";
            case 8:
                return "CENTER_X";
            case 9:
                return "CENTER_Y";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String m(int i) {
        switch (i) {
            case 1:
                return "INITIALIZE";
            case 2:
                return "RESOURCE_CACHE";
            case 3:
                return "DATA_CACHE";
            case 4:
                return "SOURCE";
            case 5:
                return "ENCODE";
            case 6:
                return "FINISHED";
            default:
                return "null";
        }
    }

    public static /* synthetic */ String n(int i) {
        return i != 1 ? i != 2 ? "null" : "PLAINTEXT" : "TLS";
    }

    public static /* synthetic */ String o(int i) {
        return i != 1 ? i != 2 ? "null" : "OUTBOUND" : "INBOUND";
    }

    public static /* synthetic */ String p(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "null" : "UNSPECIFIED" : "FROM_DEFAULT_COUNTRY" : "FROM_NUMBER_WITHOUT_PLUS_SIGN" : "FROM_NUMBER_WITH_IDD" : "FROM_NUMBER_WITH_PLUS_SIGN";
    }
}
