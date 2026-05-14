package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzfdv implements zzilu {
    private final zzfdu zza;

    private zzfdv(zzfdu zzfduVar) {
        this.zza = zzfduVar;
    }

    public static zzfdv zzc(zzfdu zzfduVar) {
        return new zzfdv(zzfduVar);
    }

    public static String zzd(zzfdu zzfduVar) {
        String zza = zzfduVar.zza();
        zzimc.zzb(zza);
        return zza;
    }

    public final String zza() {
        return zzd(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* synthetic */ Object zzb() {
        return zzd(this.zza);
    }
}
