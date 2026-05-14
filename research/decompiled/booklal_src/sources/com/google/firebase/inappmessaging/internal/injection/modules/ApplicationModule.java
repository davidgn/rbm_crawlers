package com.google.firebase.inappmessaging.internal.injection.modules;

import android.app.Application;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.inappmessaging.dagger.Module;
import com.google.firebase.inappmessaging.dagger.Provides;
import com.google.firebase.inappmessaging.internal.DeveloperListenerManager;
import java.util.concurrent.Executor;
@Module
/* loaded from: classes2.dex */
public class ApplicationModule {
    private final Application application;

    public ApplicationModule(Application application) {
        this.application = application;
    }

    @Provides
    public DeveloperListenerManager developerListenerManager(@Background Executor executor) {
        return new DeveloperListenerManager(executor);
    }

    @Provides
    public Application providesApplication() {
        return this.application;
    }
}
