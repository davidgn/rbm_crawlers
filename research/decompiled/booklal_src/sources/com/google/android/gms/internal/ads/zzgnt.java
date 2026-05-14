package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes.dex */
public final class zzgnt implements zzilu {
    private final zzimd zza;

    private zzgnt(zzimd zzimdVar) {
        this.zza = zzimdVar;
    }

    public static zzgnt zza(zzimd zzimdVar) {
        return new zzgnt(zzimdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new File(new File((File) this.zza.zzb(), "ocs"), "pcbc");
    }
}
