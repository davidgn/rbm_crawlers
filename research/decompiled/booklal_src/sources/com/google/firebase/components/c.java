package com.google.firebase.components;

import com.google.firebase.components.ComponentRuntime;
import com.google.firebase.inject.Provider;
/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Provider {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6220a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ComponentRegistrar f6221b;

    public /* synthetic */ c(ComponentRegistrar componentRegistrar, int i) {
        this.f6220a = i;
        this.f6221b = componentRegistrar;
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        switch (this.f6220a) {
            case 0:
                return ComponentRuntime.c(this.f6221b);
            default:
                return ComponentRuntime.Builder.a(this.f6221b);
        }
    }
}
