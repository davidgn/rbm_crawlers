package com.google.firebase.firestore.remote;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.inappmessaging.FirebaseInAppMessaging;
import j3.AbstractC0514k;
/* loaded from: classes2.dex */
public final /* synthetic */ class f implements OnSuccessListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6446a;

    public /* synthetic */ f(int i) {
        this.f6446a = i;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        switch (this.f6446a) {
            case 0:
                ((AbstractC0514k) obj).halfClose();
                return;
            default:
                FirebaseInAppMessaging.b((String) obj);
                return;
        }
    }
}
