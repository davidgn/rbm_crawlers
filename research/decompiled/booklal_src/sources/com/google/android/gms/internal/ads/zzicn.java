package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzicn {
    static final zzicn zza = new zzicn(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc = false;
    private static volatile zzicn zzd;
    private final Map zze;

    public zzicn() {
        this.zze = new HashMap();
    }

    public static zzicn zza() {
        int i = zzibm.zza;
        return zza;
    }

    public static zzicn zzb() {
        zzicn zzicnVar = zzd;
        if (zzicnVar != null) {
            return zzicnVar;
        }
        synchronized (zzicn.class) {
            try {
                zzicn zzicnVar2 = zzd;
                if (zzicnVar2 != null) {
                    return zzicnVar2;
                }
                int i = zzibm.zza;
                zzicn zzb2 = zzicv.zzb(zzicn.class);
                zzd = zzb2;
                return zzb2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzidb zzc(zzieo zzieoVar, int i) {
        return (zzidb) this.zze.get(new zzicm(zzieoVar, i));
    }

    public zzicn(boolean z4) {
        this.zze = Collections.emptyMap();
    }
}
