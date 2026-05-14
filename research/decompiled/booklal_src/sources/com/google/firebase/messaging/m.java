package com.google.firebase.messaging;

import com.google.firebase.messaging.WithinAppServiceConnection;
/* loaded from: classes2.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6557a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f6558b;

    public /* synthetic */ m(Object obj, int i) {
        this.f6557a = i;
        this.f6558b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6557a) {
            case 0:
                ((SharedPreferencesQueue) this.f6558b).syncState();
                return;
            default:
                WithinAppServiceConnection.BindRequest.b((WithinAppServiceConnection.BindRequest) this.f6558b);
                return;
        }
    }
}
