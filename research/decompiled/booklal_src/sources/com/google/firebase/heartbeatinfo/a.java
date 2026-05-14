package com.google.firebase.heartbeatinfo;

import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Callable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6468a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ DefaultHeartBeatController f6469b;

    public /* synthetic */ a(DefaultHeartBeatController defaultHeartBeatController, int i) {
        this.f6468a = i;
        this.f6469b = defaultHeartBeatController;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f6468a) {
            case 0:
                return DefaultHeartBeatController.a(this.f6469b);
            default:
                return DefaultHeartBeatController.d(this.f6469b);
        }
    }
}
