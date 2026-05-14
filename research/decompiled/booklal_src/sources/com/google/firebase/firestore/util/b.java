package com.google.firebase.firestore.util;

import com.google.firebase.firestore.util.AsyncQueue;
/* loaded from: classes2.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6458a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f6459b;

    public /* synthetic */ b(Object obj, int i) {
        this.f6458a = i;
        this.f6459b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6458a) {
            case 0:
                AsyncQueue.f((Throwable) this.f6459b);
                return;
            case 1:
                AsyncQueue.DelayedTask.a((AsyncQueue.DelayedTask) this.f6459b);
                return;
            default:
                Util.d((RuntimeException) this.f6459b);
                return;
        }
    }
}
