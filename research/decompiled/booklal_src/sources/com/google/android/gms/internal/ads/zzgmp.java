package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes.dex */
public final class zzgmp implements zzilu {
    private final zzimd zza;

    private zzgmp(zzimd zzimdVar) {
        this.zza = zzimdVar;
    }

    public static zzgmp zza(zzimd zzimdVar) {
        return new zzgmp(zzimdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new File(new File((File) this.zza.zzb(), "drgd"), "pmtd.d");
    }
}
