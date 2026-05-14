package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes.dex */
public final class zzgnv implements zzilu {
    private final zzimd zza;

    private zzgnv(zzimd zzimdVar) {
        this.zza = zzimdVar;
    }

    public static zzgnv zza(zzimd zzimdVar) {
        return new zzgnv(zzimdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new File(new File((File) this.zza.zzb(), "ocs"), "pcam.jar");
    }
}
