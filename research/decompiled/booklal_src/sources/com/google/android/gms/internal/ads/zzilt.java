package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzilt implements zzimd, zzilo {
    private static final Object zza = new Object();
    private volatile zzimd zzb;
    private volatile Object zzc = zza;

    private zzilt(zzimd zzimdVar) {
        this.zzb = zzimdVar;
    }

    public static zzimd zza(zzimd zzimdVar) {
        return zzimdVar instanceof zzilt ? zzimdVar : new zzilt(zzimdVar);
    }

    public static zzilo zzc(zzimd zzimdVar) {
        if (zzimdVar instanceof zzilo) {
            return (zzilo) zzimdVar;
        }
        zzimdVar.getClass();
        return new zzilt(zzimdVar);
    }

    private final synchronized Object zzd() {
        try {
            Object obj = this.zzc;
            Object obj2 = zza;
            if (obj == obj2) {
                Object zzb = this.zzb.zzb();
                Object obj3 = this.zzc;
                if (obj3 != obj2 && obj3 != zzb) {
                    throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + zzb + ". This is likely due to a circular dependency.");
                }
                this.zzc = zzb;
                this.zzb = null;
                return zzb;
            }
            return obj;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final Object zzb() {
        Object obj = this.zzc;
        return obj == zza ? zzd() : obj;
    }
}
