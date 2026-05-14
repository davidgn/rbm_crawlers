package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6230a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f6231b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f6232c;

    public /* synthetic */ a(int i, Object obj, Object obj2) {
        this.f6230a = i;
        this.f6231b = obj;
        this.f6232c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6230a) {
            case 0:
                ((CustomThreadFactory) this.f6231b).lambda$newThread$0((Runnable) this.f6232c);
                return;
            case 1:
                DelegatingScheduledExecutorService.d((Callable) this.f6231b, (DelegatingScheduledFuture.Completer) this.f6232c);
                return;
            default:
                LimitedConcurrencyExecutor.a((LimitedConcurrencyExecutor) this.f6231b, (Runnable) this.f6232c);
                return;
        }
    }
}
