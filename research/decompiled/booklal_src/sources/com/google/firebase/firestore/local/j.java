package com.google.firebase.firestore.local;

import java.util.List;
/* loaded from: classes2.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6382a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ LocalStore f6383b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ List f6384c;

    public /* synthetic */ j(LocalStore localStore, List list, int i) {
        this.f6382a = i;
        this.f6383b = localStore;
        this.f6384c = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6382a) {
            case 0:
                this.f6383b.lambda$notifyLocalViewChanges$7(this.f6384c);
                return;
            default:
                this.f6383b.lambda$configureFieldIndexes$15(this.f6384c);
                return;
        }
    }
}
