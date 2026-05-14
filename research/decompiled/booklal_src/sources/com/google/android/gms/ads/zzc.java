package com.google.android.gms.ads;
/* loaded from: classes.dex */
public final class zzc {
    public static AdSize zza(int i, int i4, String str) {
        return new AdSize(i, i4, str);
    }

    public static AdSize zzb(int i, int i4) {
        AdSize adSize = new AdSize(i, i4);
        adSize.zzd(true);
        adSize.zze(i4);
        return adSize;
    }

    public static AdSize zzc(int i, int i4) {
        AdSize adSize = new AdSize(i, i4);
        adSize.zzh(true);
        adSize.zzj(i4);
        return adSize;
    }

    public static boolean zzd(AdSize adSize) {
        return adSize.zzg();
    }

    public static int zze(AdSize adSize) {
        return adSize.zzi();
    }

    public static boolean zzf(AdSize adSize) {
        return adSize.zza();
    }

    public static boolean zzg(AdSize adSize) {
        return adSize.zzc();
    }

    public static int zzh(AdSize adSize) {
        return adSize.zzf();
    }

    public static boolean zzi(AdSize adSize) {
        return adSize.zzb();
    }
}
