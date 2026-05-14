package com.google.firebase.database.android;

import com.google.firebase.appcheck.AppCheckTokenResult;
import com.google.firebase.appcheck.interop.AppCheckTokenListener;
import com.google.firebase.database.core.TokenProvider;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements AppCheckTokenListener, Deferred.DeferredHandler {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6260a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ExecutorService f6261b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ TokenProvider.TokenChangeListener f6262c;

    public /* synthetic */ a(ExecutorService executorService, TokenProvider.TokenChangeListener tokenChangeListener, int i) {
        this.f6260a = i;
        this.f6261b = executorService;
        this.f6262c = tokenChangeListener;
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void handle(Provider provider) {
        switch (this.f6260a) {
            case 1:
                AndroidAppCheckTokenProvider.lambda$addTokenChangeListener$5(this.f6261b, this.f6262c, provider);
                return;
            default:
                AndroidAuthTokenProvider.lambda$addTokenChangeListener$5(this.f6261b, this.f6262c, provider);
                return;
        }
    }

    @Override // com.google.firebase.appcheck.interop.AppCheckTokenListener
    public void onAppCheckTokenChanged(AppCheckTokenResult appCheckTokenResult) {
        AndroidAppCheckTokenProvider.lambda$addTokenChangeListener$4(this.f6261b, this.f6262c, appCheckTokenResult);
    }
}
