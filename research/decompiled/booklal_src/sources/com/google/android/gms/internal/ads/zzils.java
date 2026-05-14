package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzils implements zzilu {
    private zzimd zza;

    public static void zza(zzimd zzimdVar, zzimd zzimdVar2) {
        zzils zzilsVar = (zzils) zzimdVar;
        if (zzilsVar.zza != null) {
            throw new IllegalStateException();
        }
        zzilsVar.zza = zzimdVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final Object zzb() {
        zzimd zzimdVar = this.zza;
        if (zzimdVar != null) {
            return zzimdVar.zzb();
        }
        throw new IllegalStateException();
    }
}
