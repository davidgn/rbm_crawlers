package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* loaded from: classes.dex */
public final class zzdr {
    private boolean zza;

    public zzdr() {
        throw null;
    }

    public final synchronized boolean zza() {
        if (this.zza) {
            return false;
        }
        this.zza = true;
        notifyAll();
        return true;
    }

    public final synchronized boolean zzb() {
        boolean z4;
        z4 = this.zza;
        this.zza = false;
        return z4;
    }

    public final synchronized void zzc() {
        while (!this.zza) {
            wait();
        }
    }

    public final synchronized void zzd() {
        boolean z4 = false;
        while (!this.zza) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z4 = true;
            }
        }
        if (z4) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean zze(long j5) {
        if (j5 > 0) {
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j6 = j5 + elapsedRealtime;
                if (j6 < elapsedRealtime) {
                    zzd();
                } else {
                    boolean z4 = false;
                    while (!this.zza && elapsedRealtime < j6) {
                        try {
                            wait(j6 - elapsedRealtime);
                        } catch (InterruptedException unused) {
                            z4 = true;
                        }
                        elapsedRealtime = SystemClock.elapsedRealtime();
                    }
                    if (z4) {
                        Thread.currentThread().interrupt();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.zza;
    }

    public final synchronized boolean zzf() {
        return this.zza;
    }

    public zzdr(zzdo zzdoVar) {
    }
}
