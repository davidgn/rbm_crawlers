package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzfdz implements zzilu {
    private final zzfdu zza;

    private zzfdz(zzfdu zzfduVar) {
        this.zza = zzfduVar;
    }

    public static zzfdz zzc(zzfdu zzfduVar) {
        return new zzfdz(zzfduVar);
    }

    public static String zzd(zzfdu zzfduVar) {
        String zze = zzfduVar.zze();
        zzimc.zzb(zze);
        return zze;
    }

    public final String zza() {
        return zzd(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* synthetic */ Object zzb() {
        return zzd(this.zza);
    }
}
