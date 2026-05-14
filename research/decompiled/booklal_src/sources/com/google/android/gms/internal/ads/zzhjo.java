package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* loaded from: classes.dex */
public final class zzhjo implements zzhch {
    private static final ThreadLocal zza = new zzhjm();

    public static zzhch zzb(zzhfd zzhfdVar) {
        return zzhif.zzc(zzhfdVar, zzhjn.zza);
    }

    public static /* synthetic */ Cipher zzc() {
        try {
            Cipher cipher = (Cipher) zza.get();
            if (cipher != null) {
                return cipher;
            }
            throw new GeneralSecurityException("AES GCM SIV cipher is invalid.");
        } catch (IllegalStateException e5) {
            throw new GeneralSecurityException("AES GCM SIV cipher is not available or is invalid.", e5);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhch
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        throw null;
    }
}
