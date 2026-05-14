package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final /* synthetic */ class e implements DelegatingScheduledFuture.Resolver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6245a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledExecutorService f6246b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Runnable f6247c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ long f6248d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ long f6249e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ TimeUnit f6250f;

    public /* synthetic */ e(DelegatingScheduledExecutorService delegatingScheduledExecutorService, Runnable runnable, long j5, long j6, TimeUnit timeUnit, int i) {
        this.f6245a = i;
        this.f6246b = delegatingScheduledExecutorService;
        this.f6247c = runnable;
        this.f6248d = j5;
        this.f6249e = j6;
        this.f6250f = timeUnit;
    }

    @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Resolver
    public final ScheduledFuture addCompleter(DelegatingScheduledFuture.Completer completer) {
        ScheduledFuture lambda$scheduleAtFixedRate$8;
        ScheduledFuture lambda$scheduleWithFixedDelay$11;
        switch (this.f6245a) {
            case 0:
                lambda$scheduleAtFixedRate$8 = this.f6246b.lambda$scheduleAtFixedRate$8(this.f6247c, this.f6248d, this.f6249e, this.f6250f, completer);
                return lambda$scheduleAtFixedRate$8;
            default:
                lambda$scheduleWithFixedDelay$11 = this.f6246b.lambda$scheduleWithFixedDelay$11(this.f6247c, this.f6248d, this.f6249e, this.f6250f, completer);
                return lambda$scheduleWithFixedDelay$11;
        }
    }
}
