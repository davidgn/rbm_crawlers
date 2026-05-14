package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.security.Signature;
/* loaded from: classes.dex */
public final class zzhzf implements zzhzg {
    @Override // com.google.android.gms.internal.ads.zzhzg
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
