package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.KeyFactory;
import java.security.Provider;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvf  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzvf implements zzvk {
    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzvk
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
    }
}
