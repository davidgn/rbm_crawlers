package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
/* loaded from: classes.dex */
public final class zzgbu implements zzilu {
    private final zzimd zza;

    private zzgbu(zzimd zzimdVar) {
        this.zza = zzimdVar;
    }

    public static zzgbu zza(zzimd zzimdVar) {
        return new zzgbu(zzimdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* bridge */ /* synthetic */ Object zzb() {
        File dir = ((Context) this.zza.zzb()).getDir("yqzdkcache", 0);
        zzimc.zzb(dir);
        return dir;
    }
}
