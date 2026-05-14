package com.google.android.gms.internal.ads;

import N2.o;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
/* loaded from: classes.dex */
public abstract class zzgzr extends AbstractExecutorService implements zzhbf {
    @Override // java.util.concurrent.AbstractExecutorService
    public final RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        return zzhbu.zze(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.google.android.gms.internal.ads.zzhbf
    public final /* synthetic */ Future submit(Runnable runnable) {
        return (o) super.submit(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzhbf
    public final o zza(Runnable runnable) {
        return (o) super.submit(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzhbf
    public final o zzb(Runnable runnable, Object obj) {
        return (o) super.submit(runnable, obj);
    }

    @Override // com.google.android.gms.internal.ads.zzhbf
    public final o zzc(Callable callable) {
        return (o) super.submit(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final RunnableFuture newTaskFor(Callable callable) {
        return new zzhbu(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.google.android.gms.internal.ads.zzhbf
    public final /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return (o) super.submit(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.google.android.gms.internal.ads.zzhbf
    public final /* synthetic */ Future submit(Callable callable) {
        return (o) super.submit(callable);
    }
}
