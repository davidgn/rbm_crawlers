package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.Provider;
import java.security.Signature;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvj  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzvj implements zzvk {
    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzvk
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
