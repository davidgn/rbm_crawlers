package com.google.firebase.database.android;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.appcheck.AppCheckTokenResult;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.database.core.TokenProvider;
/* loaded from: classes2.dex */
public final /* synthetic */ class b implements OnSuccessListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6263a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ TokenProvider.GetTokenCompletionListener f6264b;

    public /* synthetic */ b(TokenProvider.GetTokenCompletionListener getTokenCompletionListener, int i) {
        this.f6263a = i;
        this.f6264b = getTokenCompletionListener;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        switch (this.f6263a) {
            case 0:
                AndroidAppCheckTokenProvider.lambda$getToken$1(this.f6264b, (AppCheckTokenResult) obj);
                return;
            default:
                AndroidAuthTokenProvider.lambda$getToken$1(this.f6264b, (GetTokenResult) obj);
                return;
        }
    }
}
