package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.Provider;
import javax.crypto.Cipher;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvd  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzvd implements zzvk {
    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzvk
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
    }
}
