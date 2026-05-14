package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes.dex */
public final class zzamp {
    public static void zza(zzamq zzamqVar, zzamu zzamuVar, zzds zzdsVar) {
        for (int i = 0; i < zzamqVar.zza(); i++) {
            long zzb = zzamqVar.zzb(i);
            List zzc = zzamqVar.zzc(zzb);
            if (!zzc.isEmpty()) {
                if (i == zzamqVar.zza() - 1) {
                    throw new IllegalStateException();
                }
                long zzb2 = zzamqVar.zzb(i + 1) - zzamqVar.zzb(i);
                if (zzb2 > 0) {
                    zzdsVar.zza(new zzamn(zzc, zzb, zzb2));
                }
            }
        }
    }
}
