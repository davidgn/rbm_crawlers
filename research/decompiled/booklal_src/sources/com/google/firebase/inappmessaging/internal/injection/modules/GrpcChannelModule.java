package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.inappmessaging.dagger.Module;
import com.google.firebase.inappmessaging.dagger.Provides;
import j3.AbstractC0511h;
import j3.W;
@Module
/* loaded from: classes2.dex */
public class GrpcChannelModule {
    @Provides
    public AbstractC0511h providesGrpcChannel(String str) {
        return W.b(str).a();
    }

    @Provides
    public String providesServiceHost() {
        return "firebaseinappmessaging.googleapis.com";
    }
}
