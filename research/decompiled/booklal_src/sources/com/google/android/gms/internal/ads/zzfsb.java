package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class zzfsb {
    private final zzfrq zza;
    private final AtomicBoolean zzb = new AtomicBoolean(false);
    private volatile ScheduledFuture zzc;

    public zzfsb(final zzfrq zzfrqVar, ScheduledExecutorService scheduledExecutorService, long j5) {
        this.zza = zzfrqVar;
        if (j5 > 0) {
            this.zzc = scheduledExecutorService.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfsa
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfsb.this.zzb(zzfrqVar);
                }
            }, j5, TimeUnit.MILLISECONDS);
        }
    }

    public final void zza() {
        if (this.zzb.compareAndSet(false, true)) {
            if (this.zzc != null) {
                this.zzc.cancel(false);
            }
            this.zza.zzc();
        }
    }

    public final /* synthetic */ void zzb(zzfrq zzfrqVar) {
        if (this.zzb.compareAndSet(false, true)) {
            zzfrqVar.zzc();
        }
    }
}
