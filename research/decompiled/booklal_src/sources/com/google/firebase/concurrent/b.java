package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final /* synthetic */ class b implements DelegatingScheduledFuture.Resolver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6233a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledExecutorService f6234b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ long f6235c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ TimeUnit f6236d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f6237e;

    public /* synthetic */ b(DelegatingScheduledExecutorService delegatingScheduledExecutorService, Object obj, long j5, TimeUnit timeUnit, int i) {
        this.f6233a = i;
        this.f6234b = delegatingScheduledExecutorService;
        this.f6237e = obj;
        this.f6235c = j5;
        this.f6236d = timeUnit;
    }

    @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Resolver
    public final ScheduledFuture addCompleter(DelegatingScheduledFuture.Completer completer) {
        ScheduledFuture lambda$schedule$2;
        ScheduledFuture lambda$schedule$5;
        switch (this.f6233a) {
            case 0:
                lambda$schedule$2 = this.f6234b.lambda$schedule$2((Runnable) this.f6237e, this.f6235c, this.f6236d, completer);
                return lambda$schedule$2;
            default:
                lambda$schedule$5 = this.f6234b.lambda$schedule$5((Callable) this.f6237e, this.f6235c, this.f6236d, completer);
                return lambda$schedule$5;
        }
    }
}
