package com.google.android.gms.internal.ads;

import com.google.android.gms.security.ProviderInstaller;
import java.security.GeneralSecurityException;
import java.security.Provider;
/* loaded from: classes.dex */
final class zzhyw implements zzhyx {
    private final zzhzg zza;

    @Override // com.google.android.gms.internal.ads.zzhyx
    public final Object zza(String str) {
        Exception exc = null;
        for (Provider provider : zzhyy.zza(ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL", "Conscrypt")) {
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
