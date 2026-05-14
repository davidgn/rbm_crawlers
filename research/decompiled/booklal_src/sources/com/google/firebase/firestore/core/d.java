package com.google.firebase.firestore.core;
/* loaded from: classes2.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6319a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ FirestoreClient f6320b;

    public /* synthetic */ d(FirestoreClient firestoreClient, int i) {
        this.f6319a = i;
        this.f6320b = firestoreClient;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6319a) {
            case 0:
                FirestoreClient.u(this.f6320b);
                return;
            case 1:
                FirestoreClient.v(this.f6320b);
                return;
            default:
                FirestoreClient.o(this.f6320b);
                return;
        }
    }
}
