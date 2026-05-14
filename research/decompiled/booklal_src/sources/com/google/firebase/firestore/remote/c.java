package com.google.firebase.firestore.remote;

import com.google.firebase.firestore.remote.AbstractStream;
/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6438a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f6439b;

    public /* synthetic */ c(Object obj, int i) {
        this.f6438a = i;
        this.f6439b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6438a) {
            case 0:
                ((AbstractStream.StreamObserver) this.f6439b).lambda$onOpen$2();
                return;
            default:
                OnlineStateTracker.a((OnlineStateTracker) this.f6439b);
                return;
        }
    }
}
