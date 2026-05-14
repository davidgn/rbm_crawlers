package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzeii {
    private long zza = 0;
    private int zzb = 0;
    private long zzc = 0;
    private long zzd = 0;
    private long zze = 0;
    private final Object zzf = new Object();
    private final Object zzg = new Object();
    private final Object zzh = new Object();
    private final Object zzi = new Object();
    private final Object zzj = new Object();

    public final synchronized void zza(long j5) {
        synchronized (this.zzf) {
            this.zza = j5;
        }
    }

    public final synchronized long zzb() {
        long j5;
        synchronized (this.zzf) {
            j5 = this.zza;
        }
        return j5;
    }

    public final void zzc(int i) {
        synchronized (this.zzg) {
            this.zzb = i;
        }
    }

    public final int zzd() {
        int i;
        synchronized (this.zzg) {
            i = this.zzb;
        }
        return i;
    }

    public final void zze(long j5) {
        synchronized (this.zzh) {
            this.zzc = j5;
        }
    }

    public final long zzf() {
        long j5;
        synchronized (this.zzh) {
            j5 = this.zzc;
        }
        return j5;
    }

    public final synchronized void zzg(long j5) {
        synchronized (this.zzi) {
            this.zzd = j5;
        }
    }

    public final synchronized long zzh() {
        long j5;
        synchronized (this.zzi) {
            j5 = this.zzd;
        }
        return j5;
    }

    public final synchronized void zzi(long j5) {
        synchronized (this.zzj) {
            this.zze = j5;
        }
    }

    public final synchronized long zzj() {
        long j5;
        synchronized (this.zzj) {
            j5 = this.zze;
        }
        return j5;
    }
}
