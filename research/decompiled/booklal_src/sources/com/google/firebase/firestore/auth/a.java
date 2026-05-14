package com.google.firebase.firestore.auth;

import com.google.firebase.appcheck.AppCheckTokenResult;
import com.google.firebase.appcheck.interop.AppCheckTokenListener;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements AppCheckTokenListener, Deferred.DeferredHandler {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ FirebaseAppCheckTokenProvider f6299a;

    public /* synthetic */ a(FirebaseAppCheckTokenProvider firebaseAppCheckTokenProvider) {
        this.f6299a = firebaseAppCheckTokenProvider;
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void handle(Provider provider) {
        FirebaseAppCheckTokenProvider.a(this.f6299a, provider);
    }

    @Override // com.google.firebase.appcheck.interop.AppCheckTokenListener
    public void onAppCheckTokenChanged(AppCheckTokenResult appCheckTokenResult) {
        FirebaseAppCheckTokenProvider.b(this.f6299a, appCheckTokenResult);
    }
}
