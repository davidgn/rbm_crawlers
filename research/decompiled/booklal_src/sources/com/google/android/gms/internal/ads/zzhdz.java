package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
final class zzhdz implements zzhch {
    private final zzhmg zza;

    @Override // com.google.android.gms.internal.ads.zzhch
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        for (zzhdx zzhdxVar : this.zza.zza(bArr)) {
            try {
                byte[] zza = zzhdxVar.zza.zza(bArr, bArr2);
                int length = bArr.length;
                return zza;
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }
}
