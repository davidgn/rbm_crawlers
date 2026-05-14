package com.google.android.gms.ads.internal.util;

import N2.o;
import com.google.android.gms.internal.ads.zzcew;
/* loaded from: classes.dex */
public abstract class zzb {
    private final Runnable zza = new zza(this);
    private volatile Thread zzb;

    public abstract void zza();

    public o zzb() {
        return zzcew.zza.submit(this.zza);
    }

    public final /* synthetic */ void zzc(Thread thread) {
        this.zzb = thread;
    }
}
