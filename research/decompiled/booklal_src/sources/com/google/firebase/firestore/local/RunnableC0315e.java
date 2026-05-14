package com.google.firebase.firestore.local;
/* renamed from: com.google.firebase.firestore.local.e  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC0315e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6367a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ LocalStore f6368b;

    public /* synthetic */ RunnableC0315e(LocalStore localStore, int i) {
        this.f6367a = i;
        this.f6368b = localStore;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6367a) {
            case 0:
                LocalStore.d(this.f6368b);
                return;
            default:
                LocalStore.p(this.f6368b);
                return;
        }
    }
}
