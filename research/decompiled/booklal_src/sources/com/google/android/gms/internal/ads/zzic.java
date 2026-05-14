package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class zzic {
    private static final Pattern zza = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");
    private static final Pattern zzb = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    public static long zza(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = zzb.matcher(str);
        if (matcher.matches()) {
            String group = matcher.group(1);
            group.getClass();
            return Long.parseLong(group);
        }
        return -1L;
    }

    public static long zzb(String str, String str2) {
        long j5 = -1;
        if (!TextUtils.isEmpty(str)) {
            try {
                j5 = Long.parseLong(str);
            } catch (NumberFormatException unused) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 28);
                sb.append("Unexpected Content-Length [");
                sb.append(str);
                sb.append("]");
                zzef.zze("HttpUtil", sb.toString());
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return j5;
        }
        Matcher matcher = zza.matcher(str2);
        if (matcher.matches()) {
            try {
                String group = matcher.group(2);
                if (group != null) {
                    long parseLong = Long.parseLong(group);
                    String group2 = matcher.group(1);
                    if (group2 != null) {
                        int i = (j5 > 0L ? 1 : (j5 == 0L ? 0 : -1));
                        long parseLong2 = (parseLong - Long.parseLong(group2)) + 1;
                        if (i < 0) {
                            return parseLong2;
                        }
                        if (j5 != parseLong2) {
                            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(str2).length() + 1);
                            sb2.append("Inconsistent headers [");
                            sb2.append(str);
                            sb2.append("] [");
                            sb2.append(str2);
                            sb2.append("]");
                            zzef.zzc("HttpUtil", sb2.toString());
                            return Math.max(j5, parseLong2);
                        }
                        return j5;
                    }
                    throw null;
                }
                throw null;
            } catch (NumberFormatException unused2) {
                StringBuilder sb3 = new StringBuilder(String.valueOf(str2).length() + 27);
                sb3.append("Unexpected Content-Range [");
                sb3.append(str2);
                sb3.append("]");
                zzef.zze("HttpUtil", sb3.toString());
                return j5;
            }
        }
        return j5;
    }
}
