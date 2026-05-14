package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class zzgdq implements zzgdl {
    private final ScheduledExecutorService zza = Executors.newSingleThreadScheduledExecutor();

    @Override // com.google.android.gms.internal.ads.zzgdl
    public final void zza(Runnable runnable, long j5) {
        this.zza.schedule(runnable, j5, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.internal.ads.zzgdl
    public final void zzb() {
    }
}
