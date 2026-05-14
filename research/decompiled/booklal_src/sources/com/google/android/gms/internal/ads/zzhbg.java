package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public interface zzhbg extends ScheduledExecutorService, zzhbf {
    @Override // java.util.concurrent.ScheduledExecutorService
    /* renamed from: zzd */
    zzhbe schedule(Runnable runnable, long j5, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    /* renamed from: zze */
    zzhbe schedule(Callable callable, long j5, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    /* renamed from: zzf */
    zzhbe scheduleAtFixedRate(Runnable runnable, long j5, long j6, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    /* renamed from: zzg */
    zzhbe scheduleWithFixedDelay(Runnable runnable, long j5, long j6, TimeUnit timeUnit);
}
