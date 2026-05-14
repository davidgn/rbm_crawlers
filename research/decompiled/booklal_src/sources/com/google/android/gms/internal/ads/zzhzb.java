package com.google.android.gms.internal.ads;

import java.security.KeyFactory;
import java.security.Provider;
/* loaded from: classes.dex */
public final class zzhzb implements zzhzg {
    @Override // com.google.android.gms.internal.ads.zzhzg
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
    }
}
