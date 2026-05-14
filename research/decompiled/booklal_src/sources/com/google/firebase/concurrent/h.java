package com.google.firebase.concurrent;

import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final /* synthetic */ class h implements Callable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6255a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Runnable f6256b;

    public /* synthetic */ h(Runnable runnable, int i) {
        this.f6255a = i;
        this.f6256b = runnable;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f6255a) {
            case 0:
                return LimitedConcurrencyExecutorService.c(this.f6256b);
            default:
                return PausableExecutorServiceImpl.a(this.f6256b);
        }
    }
}
