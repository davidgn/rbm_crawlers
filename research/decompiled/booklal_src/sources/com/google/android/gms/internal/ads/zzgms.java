package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes.dex */
public final class zzgms implements zzilu {
    private final zzimd zza;

    private zzgms(zzimd zzimdVar) {
        this.zza = zzimdVar;
    }

    public static zzgms zza(zzimd zzimdVar) {
        return new zzgms(zzimdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new File(new File((File) this.zza.zzb(), "drgd"), "pcam.jar.d");
    }
}
