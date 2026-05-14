package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes.dex */
public final class zzgmx implements zzilu {
    private final zzimd zza;

    private zzgmx(zzimd zzimdVar) {
        this.zza = zzimdVar;
    }

    public static zzgmx zza(zzimd zzimdVar) {
        return new zzgmx(zzimdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new File(new File((File) this.zza.zzb(), "drgd"), "pcbc");
    }
}
