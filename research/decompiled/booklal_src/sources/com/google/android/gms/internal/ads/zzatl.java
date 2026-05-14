package com.google.android.gms.internal.ads;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes.dex */
public final class zzatl {
    public static zzarx zza(zzask zzaskVar) {
        boolean z4;
        long j5;
        long j6;
        long j7;
        long j8;
        long currentTimeMillis = System.currentTimeMillis();
        Map map = zzaskVar.zzc;
        if (map == null) {
            return null;
        }
        String str = (String) map.get("Date");
        long zzb = str != null ? zzb(str) : 0L;
        String str2 = (String) map.get("Cache-Control");
        int i = 0;
        if (str2 != null) {
            String[] split = str2.split(",", 0);
            z4 = false;
            j5 = 0;
            j6 = 0;
            while (i < split.length) {
                String trim = split[i].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j6 = Long.parseLong(trim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    j5 = Long.parseLong(trim.substring(23));
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    z4 = true;
                }
                i++;
            }
            i = 1;
        } else {
            z4 = false;
            j5 = 0;
            j6 = 0;
        }
        String str3 = (String) map.get("Expires");
        long zzb2 = str3 != null ? zzb(str3) : 0L;
        String str4 = (String) map.get("Last-Modified");
        long zzb3 = str4 != null ? zzb(str4) : 0L;
        String str5 = (String) map.get("ETag");
        if (i != 0) {
            j8 = currentTimeMillis + (j6 * 1000);
            j7 = z4 ? j8 : (j5 * 1000) + j8;
        } else {
            j7 = 0;
            if (zzb <= 0 || zzb2 < zzb) {
                j8 = 0;
            } else {
                j8 = currentTimeMillis + (zzb2 - zzb);
                j7 = j8;
            }
        }
        zzarx zzarxVar = new zzarx();
        zzarxVar.zza = zzaskVar.zzb;
        zzarxVar.zzb = str5;
        zzarxVar.zzf = j8;
        zzarxVar.zze = j7;
        zzarxVar.zzc = zzb;
        zzarxVar.zzd = zzb3;
        zzarxVar.zzg = map;
        zzarxVar.zzh = zzaskVar.zzd;
        return zzarxVar;
    }

    public static long zzb(String str) {
        try {
            return zzd("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
        } catch (ParseException e5) {
            if ("0".equals(str) || "-1".equals(str)) {
                zzata.zza("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            zzata.zzd(e5, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    public static String zzc(long j5) {
        return zzd("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j5));
    }

    private static SimpleDateFormat zzd(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
