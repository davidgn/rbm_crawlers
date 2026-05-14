package com.google.firebase.firestore.util;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.firestore.util.AsyncQueue;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6463a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f6464b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f6465c;

    public /* synthetic */ e(int i, Object obj, Object obj2) {
        this.f6463a = i;
        this.f6464b = obj;
        this.f6465c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6463a) {
            case 0:
                AsyncQueue.SynchronizedShutdownAwareExecutor.a((TaskCompletionSource) this.f6464b, (Callable) this.f6465c);
                return;
            case 1:
                ((ThrottledForwardingExecutor) this.f6464b).lambda$execute$0((Runnable) this.f6465c);
                return;
            case 2:
                AsyncQueue.e((AsyncQueue) this.f6464b, (AsyncQueue.TimerId) this.f6465c);
                return;
            case 3:
                BackgroundQueue.a((BackgroundQueue) this.f6464b, (Runnable) this.f6465c);
                return;
            default:
                ExponentialBackoff.a((ExponentialBackoff) this.f6464b, (Runnable) this.f6465c);
                return;
        }
    }
}
