package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public class zzbjf {
    private final String zza;
    private final Object zzb;
    private final int zzc;

    public zzbjf(String str, Object obj, int i) {
        this.zza = str;
        this.zzb = obj;
        this.zzc = i;
    }

    public static zzbjf zza(String str, boolean z4) {
        return new zzbjf(str, Boolean.valueOf(z4), 1);
    }

    public static zzbjf zzb(String str, long j5) {
        return new zzbjf(str, Long.valueOf(j5), 2);
    }

    public static zzbjf zzc(String str, double d2) {
        return new zzbjf(str, Double.valueOf(d2), 3);
    }

    public static zzbjf zzd(String str, String str2) {
        return new zzbjf("gad:dynamite_module:experiment_id", "", 4);
    }

    public final Object zze() {
        zzbkl zza = zzbkn.zza();
        if (zza != null) {
            int i = this.zzc - 1;
            return i != 0 ? i != 1 ? i != 2 ? zza.zzd(this.zza, (String) this.zzb) : zza.zzc(this.zza, ((Double) this.zzb).doubleValue()) : zza.zzb(this.zza, ((Long) this.zzb).longValue()) : zza.zza(this.zza, ((Boolean) this.zzb).booleanValue());
        }
        if (zzbkn.zzb() != null) {
            zzbkn.zzb().zza();
        }
        return this.zzb;
    }
}
