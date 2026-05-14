package com.google.firebase.firestore.util;

import com.google.firebase.firestore.util.AsyncQueue;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Callable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6460a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Runnable f6461b;

    public /* synthetic */ c(Runnable runnable, int i) {
        this.f6460a = i;
        this.f6461b = runnable;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f6460a) {
            case 0:
                return AsyncQueue.SynchronizedShutdownAwareExecutor.lambda$executeAndInitiateShutdown$2(this.f6461b);
            default:
                return AsyncQueue.lambda$enqueue$2(this.f6461b);
        }
    }
}
