package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes.dex */
public final class zzgmq implements zzilu {
    private final zzimd zza;

    private zzgmq(zzimd zzimdVar) {
        this.zza = zzimdVar;
    }

    public static zzgmq zza(zzimd zzimdVar) {
        return new zzgmq(zzimdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new File(new File((File) this.zza.zzb(), "drgd"), "pcbc.d");
    }
}
