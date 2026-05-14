package com.google.android.gms.internal.ads;

import N2.o;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class zzcfb implements o {
    private final zzhbo zza = zzhbo.zze();

    private static final boolean zza(boolean z4) {
        if (!z4) {
            com.google.android.gms.ads.internal.zzt.zzh().zzh(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return z4;
    }

    @Override // N2.o
    public final void addListener(Runnable runnable, Executor executor) {
        this.zza.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z4) {
        return this.zza.cancel(z4);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.zza.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zza.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.zza.isDone();
    }

    public final boolean zzc(Object obj) {
        boolean zza = this.zza.zza(obj);
        zza(zza);
        return zza;
    }

    public final boolean zzd(Throwable th) {
        boolean zzb = this.zza.zzb(th);
        zza(zzb);
        return zzb;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j5, TimeUnit timeUnit) {
        return this.zza.get(j5, timeUnit);
    }
}
