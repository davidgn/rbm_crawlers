package com.google.android.gms.internal.ads;

import N2.o;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
public interface zzhbf extends ExecutorService {
    @Override // java.util.concurrent.ExecutorService, com.google.android.gms.internal.ads.zzhbf
    /* renamed from: zza */
    o submit(Runnable runnable);

    @Override // java.util.concurrent.ExecutorService, com.google.android.gms.internal.ads.zzhbf
    /* renamed from: zzb */
    o submit(Runnable runnable, Object obj);

    @Override // java.util.concurrent.ExecutorService, com.google.android.gms.internal.ads.zzhbf
    /* renamed from: zzc */
    o submit(Callable callable);
}
