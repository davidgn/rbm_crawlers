package com.google.firebase.concurrent;

import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final /* synthetic */ class i implements Callable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6257a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Runnable f6258b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f6259c;

    public /* synthetic */ i(Runnable runnable, Object obj, int i) {
        this.f6257a = i;
        this.f6258b = runnable;
        this.f6259c = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f6257a) {
            case 0:
                return LimitedConcurrencyExecutorService.lambda$submit$0(this.f6258b, this.f6259c);
            default:
                return PausableExecutorServiceImpl.lambda$submit$0(this.f6258b, this.f6259c);
        }
    }
}
