package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import android.os.Build;
/* loaded from: classes.dex */
public final class zzpy {
    public static final zzpy zza;
    public final String zzb;
    private final zzpx zzc;

    static {
        new zzpy("");
        zza = new zzpy("preload");
    }

    public zzpy(String str) {
        this.zzb = str;
        this.zzc = Build.VERSION.SDK_INT >= 31 ? new zzpx() : null;
    }

    public final synchronized LogSessionId zza() {
        zzpx zzpxVar;
        zzpxVar = this.zzc;
        if (zzpxVar == null) {
            throw null;
        }
        return zzpxVar.zza;
    }

    public final synchronized void zzb(LogSessionId logSessionId) {
        LogSessionId logSessionId2;
        boolean equals;
        zzpx zzpxVar = this.zzc;
        if (zzpxVar == null) {
            throw null;
        }
        LogSessionId logSessionId3 = zzpxVar.zza;
        logSessionId2 = LogSessionId.LOG_SESSION_ID_NONE;
        equals = logSessionId3.equals(logSessionId2);
        zzgsj.zzi(equals);
        zzpxVar.zza = logSessionId;
    }
}
