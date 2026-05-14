package com.google.android.gms.internal.ads;

import com.google.android.gms.security.ProviderInstaller;
import java.security.Provider;
/* loaded from: classes.dex */
final class zzhyu implements zzhyx {
    private final zzhzg zza;

    @Override // com.google.android.gms.internal.ads.zzhyx
    public final Object zza(String str) {
        for (Provider provider : zzhyy.zza(ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL")) {
            try {
                return this.zza.zza(str, provider);
            } catch (Exception unused) {
            }
        }
        return this.zza.zza(str, null);
    }
}
