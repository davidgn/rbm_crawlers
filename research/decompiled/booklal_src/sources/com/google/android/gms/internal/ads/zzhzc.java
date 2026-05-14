package com.google.android.gms.internal.ads;

import java.security.KeyPairGenerator;
import java.security.Provider;
/* loaded from: classes.dex */
public final class zzhzc implements zzhzg {
    @Override // com.google.android.gms.internal.ads.zzhzg
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
    }
}
