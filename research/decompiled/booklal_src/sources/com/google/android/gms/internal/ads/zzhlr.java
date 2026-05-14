package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzhlr {
    private static final zzhlr zzb = new zzhlr();
    private final Map zza = new HashMap();

    public static zzhlr zza() {
        return zzb;
    }

    public final synchronized void zzb(String str, zzhde zzhdeVar) {
        try {
            Map map = this.zza;
            if (!map.containsKey(str)) {
                map.put(str, zzhdeVar);
            } else if (((zzhde) map.get(str)).equals(zzhdeVar)) {
            } else {
                String valueOf = String.valueOf(map.get(str));
                String valueOf2 = String.valueOf(zzhdeVar);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 45 + valueOf.length() + 17 + valueOf2.length());
                sb.append("Parameters object with name ");
                sb.append(str);
                sb.append(" already exists (");
                sb.append(valueOf);
                sb.append("), cannot insert ");
                sb.append(valueOf2);
                throw new GeneralSecurityException(sb.toString());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized zzhde zzc(String str) {
        Map map;
        map = this.zza;
        if (!map.containsKey("AES128_GCM")) {
            throw new GeneralSecurityException("Name AES128_GCM does not exist");
        }
        return (zzhde) map.get("AES128_GCM");
    }

    public final synchronized void zzd(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            zzb((String) entry.getKey(), (zzhde) entry.getValue());
        }
    }
}
