package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes.dex */
public final class zzgns implements zzilu {
    private final zzimd zza;

    private zzgns(zzimd zzimdVar) {
        this.zza = zzimdVar;
    }

    public static zzgns zza(zzimd zzimdVar) {
        return new zzgns(zzimdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new File(new File((File) this.zza.zzb(), "ocs"), "pmtd");
    }
}
