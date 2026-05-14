package com.google.android.gms.internal.measurement;

import C.a;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public final class zzil {
    public static String zza(String str, Object... objArr) {
        int length;
        int length2;
        int indexOf;
        String m4;
        int i = 0;
        int i4 = 0;
        while (true) {
            length = objArr.length;
            if (i4 >= length) {
                break;
            }
            Object obj = objArr[i4];
            if (obj == null) {
                m4 = "null";
            } else {
                try {
                    m4 = obj.toString();
                } catch (Exception e5) {
                    String v5 = a.v(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(v5), (Throwable) e5);
                    m4 = a.m("<", v5, " threw ", e5.getClass().getName(), ">");
                }
            }
            objArr[i4] = m4;
            i4++;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length * 16));
        int i5 = 0;
        while (true) {
            length2 = objArr.length;
            if (i >= length2 || (indexOf = str.indexOf("%s", i5)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i5, indexOf);
            sb.append(objArr[i]);
            i5 = indexOf + 2;
            i++;
        }
        sb.append((CharSequence) str, i5, str.length());
        if (i < length2) {
            sb.append(" [");
            sb.append(objArr[i]);
            for (int i6 = i + 1; i6 < objArr.length; i6++) {
                sb.append(", ");
                sb.append(objArr[i6]);
            }
            sb.append(']');
        }
        return sb.toString();
    }
}
