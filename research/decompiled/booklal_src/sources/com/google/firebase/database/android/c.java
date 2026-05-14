package com.google.firebase.database.android;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.firebase.database.core.TokenProvider;
/* loaded from: classes2.dex */
public final /* synthetic */ class c implements OnFailureListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6265a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ TokenProvider.GetTokenCompletionListener f6266b;

    public /* synthetic */ c(TokenProvider.GetTokenCompletionListener getTokenCompletionListener, int i) {
        this.f6265a = i;
        this.f6266b = getTokenCompletionListener;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        switch (this.f6265a) {
            case 0:
                AndroidAppCheckTokenProvider.a(this.f6266b, exc);
                return;
            default:
                AndroidAuthTokenProvider.f(this.f6266b, exc);
                return;
        }
    }
}
