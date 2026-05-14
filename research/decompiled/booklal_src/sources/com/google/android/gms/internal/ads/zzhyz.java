package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.Cipher;
/* loaded from: classes.dex */
public final class zzhyz implements zzhzg {
    @Override // com.google.android.gms.internal.ads.zzhzg
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
    }
}
