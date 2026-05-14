package com.google.firebase.firestore.remote;

import j3.V;
/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6447a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ GrpcCallProvider f6448b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ V f6449c;

    public /* synthetic */ g(GrpcCallProvider grpcCallProvider, V v5, int i) {
        this.f6447a = i;
        this.f6448b = grpcCallProvider;
        this.f6449c = v5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6447a) {
            case 0:
                GrpcCallProvider.e(this.f6448b, this.f6449c);
                return;
            case 1:
                GrpcCallProvider.c(this.f6448b, this.f6449c);
                return;
            case 2:
                GrpcCallProvider.d(this.f6448b, this.f6449c);
                return;
            case 3:
                GrpcCallProvider.a(this.f6448b, this.f6449c);
                return;
            default:
                GrpcCallProvider.b(this.f6448b, this.f6449c);
                return;
        }
    }
}
