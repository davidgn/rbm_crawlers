package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzcmj {
    public final int zza;
    public final int zzb;
    private final int zzc;

    private zzcmj(int i, int i4, int i5) {
        this.zzc = i;
        this.zzb = i4;
        this.zza = i5;
    }

    public static zzcmj zza(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        return zzrVar.zzd ? new zzcmj(3, 0, 0) : zzrVar.zzi ? new zzcmj(2, 0, 0) : zzrVar.zzh ? new zzcmj(0, 0, 0) : new zzcmj(1, zzrVar.zzf, zzrVar.zzc);
    }

    public static zzcmj zzb() {
        return new zzcmj(0, 0, 0);
    }

    public static zzcmj zzc(int i, int i4) {
        return new zzcmj(1, i, i4);
    }

    public static zzcmj zzd() {
        return new zzcmj(4, 0, 0);
    }

    public static zzcmj zze() {
        return new zzcmj(5, 0, 0);
    }

    public final boolean zzf() {
        return this.zzc == 2;
    }

    public final boolean zzg() {
        return this.zzc == 3;
    }

    public final boolean zzh() {
        return this.zzc == 0;
    }

    public final boolean zzi() {
        return this.zzc == 4;
    }

    public final boolean zzj() {
        return this.zzc == 5;
    }
}
