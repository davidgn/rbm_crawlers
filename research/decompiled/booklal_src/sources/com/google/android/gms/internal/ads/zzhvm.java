package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
final class zzhvm implements zzhdh {
    private final zzhmg zza;

    public zzhvm(zzhmg zzhmgVar, zzhlh zzhlhVar) {
        this.zza = zzhmgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhdh
    public final void zza(byte[] bArr, byte[] bArr2) {
        for (zzhvl zzhvlVar : this.zza.zza(bArr)) {
            try {
                zzhvlVar.zza.zza(bArr, bArr2);
                int length = bArr2.length;
                return;
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("invalid signature");
    }
}
