package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes.dex */
public final class zzimf {
    private final List zza;
    private final List zzb;

    public /* synthetic */ zzimf(int i, int i4, zzime zzimeVar) {
        this.zza = zzilr.zza(i);
        this.zzb = zzilr.zza(i4);
    }

    public final zzimf zza(zzimd zzimdVar) {
        this.zza.add(zzimdVar);
        return this;
    }

    public final zzimf zzb(zzimd zzimdVar) {
        this.zzb.add(zzimdVar);
        return this;
    }

    public final zzimg zzc() {
        return new zzimg(this.zza, this.zzb, null);
    }
}
