package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.security.ProviderInstaller;
import java.security.GeneralSecurityException;
import java.security.Provider;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzva  reason: invalid package */
/* loaded from: classes2.dex */
final class zzva implements zzvb {
    private final zzvk zza;

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzvb
    public final Object zza(String str) {
        Exception exc = null;
        for (Provider provider : zzvc.zzb(ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL", "Conscrypt")) {
            try {
                return this.zza.zza(str, provider);
            } catch (Exception e5) {
                if (exc == null) {
                    exc = e5;
                }
            }
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }
}
