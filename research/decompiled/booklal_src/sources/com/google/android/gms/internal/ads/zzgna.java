package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes.dex */
public final class zzgna implements zzilu {
    private final zzimd zza;

    private zzgna(zzimd zzimdVar) {
        this.zza = zzimdVar;
    }

    public static zzgna zza(zzimd zzimdVar) {
        return new zzgna(zzimdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new File(new File(new File((File) this.zza.zzb(), "drgd"), "v"), "pcam.jar");
    }
}
