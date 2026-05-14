package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.MessageDigest;
import java.security.Provider;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvi  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzvi implements zzvk {
    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzvk
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
    }
}
