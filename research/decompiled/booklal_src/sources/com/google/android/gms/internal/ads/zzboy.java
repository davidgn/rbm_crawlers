package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class zzboy {
    private boolean zza = false;
    private boolean zzb = false;
    private float zzc = 0.0f;
    private final AtomicBoolean zzd = new AtomicBoolean(false);

    public final synchronized void zza(boolean z4) {
        this.zza = z4;
        this.zzd.set(true);
    }

    public final synchronized void zzb(boolean z4, float f5) {
        this.zzb = z4;
        this.zzc = f5;
    }

    public final synchronized boolean zzc(boolean z4) {
        if (this.zzd.get()) {
            return this.zza;
        }
        return z4;
    }

    public final synchronized boolean zzd() {
        return this.zzb;
    }

    public final synchronized float zze() {
        return this.zzc;
    }
}
