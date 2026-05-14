package com.google.firebase.inappmessaging.internal;

import android.app.Application;
import com.google.firebase.inappmessaging.dagger.internal.Factory;
/* loaded from: classes2.dex */
public final class ProviderInstaller_Factory implements Factory<ProviderInstaller> {
    private final X3.a applicationProvider;

    public ProviderInstaller_Factory(X3.a aVar) {
        this.applicationProvider = aVar;
    }

    public static ProviderInstaller_Factory create(X3.a aVar) {
        return new ProviderInstaller_Factory(aVar);
    }

    public static ProviderInstaller newInstance(Application application) {
        return new ProviderInstaller(application);
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, X3.a
    public ProviderInstaller get() {
        return newInstance((Application) this.applicationProvider.get());
    }
}
