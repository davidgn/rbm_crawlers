package com.google.firebase.inappmessaging.internal;
/* loaded from: classes2.dex */
public final /* synthetic */ class f implements E3.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6489a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ DisplayCallbacksImpl f6490b;

    public /* synthetic */ f(DisplayCallbacksImpl displayCallbacksImpl, int i) {
        this.f6489a = i;
        this.f6490b = displayCallbacksImpl;
    }

    @Override // E3.a
    public final void run() {
        switch (this.f6489a) {
            case 0:
                DisplayCallbacksImpl.i(this.f6490b);
                return;
            default:
                DisplayCallbacksImpl.g(this.f6490b);
                return;
        }
    }
}
