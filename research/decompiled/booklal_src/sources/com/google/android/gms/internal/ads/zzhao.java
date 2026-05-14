package com.google.android.gms.internal.ads;

import N2.o;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
final class zzhao extends zzhan {
    private final o zza;

    public zzhao(o oVar) {
        oVar.getClass();
        this.zza = oVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgzo, com.google.android.gms.internal.ads.zzgzp, N2.o
    public final void addListener(Runnable runnable, Executor executor) {
        this.zza.addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzgzo, java.util.concurrent.Future
    public final boolean cancel(boolean z4) {
        return this.zza.cancel(z4);
    }

    @Override // com.google.android.gms.internal.ads.zzgzo, java.util.concurrent.Future
    public final Object get() {
        return this.zza.get();
    }

    @Override // com.google.android.gms.internal.ads.zzgzo, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zza.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzgzo, java.util.concurrent.Future
    public final boolean isDone() {
        return this.zza.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzgzo
    public final String toString() {
        return this.zza.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgzo, java.util.concurrent.Future
    public final Object get(long j5, TimeUnit timeUnit) {
        return this.zza.get(j5, timeUnit);
    }
}
