package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.security.ProviderInstaller;
import java.security.Provider;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzuw  reason: invalid package */
/* loaded from: classes2.dex */
final class zzuw implements zzvb {
    private final zzvk zza;

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzvb
    public final Object zza(String str) {
        for (Provider provider : zzvc.zzb(ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL")) {
            try {
                return this.zza.zza(str, provider);
            } catch (Exception unused) {
            }
        }
        return this.zza.zza(str, null);
    }
}
