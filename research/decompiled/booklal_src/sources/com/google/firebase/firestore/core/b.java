package com.google.firebase.firestore.core;

import com.google.firebase.firestore.EventListener;
/* loaded from: classes2.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6311a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ FirestoreClient f6312b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ EventListener f6313c;

    public /* synthetic */ b(FirestoreClient firestoreClient, EventListener eventListener, int i) {
        this.f6311a = i;
        this.f6312b = firestoreClient;
        this.f6313c = eventListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6311a) {
            case 0:
                this.f6312b.lambda$addSnapshotsInSyncListener$18(this.f6313c);
                return;
            default:
                this.f6312b.lambda$removeSnapshotsInSyncListener$22(this.f6313c);
                return;
        }
    }
}
