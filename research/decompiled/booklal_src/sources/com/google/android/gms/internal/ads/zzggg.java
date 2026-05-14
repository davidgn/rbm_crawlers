package com.google.android.gms.internal.ads;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
/* loaded from: classes.dex */
public final class zzggg {
    private final byte[] zza = new byte[UserVerificationMethods.USER_VERIFY_HANDPRINT];
    private int zzb;
    private int zzc;

    public zzggg(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.zza[i] = (byte) i;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < 256; i5++) {
            byte[] bArr2 = this.zza;
            byte b5 = bArr2[i5];
            i4 = (i4 + b5 + bArr[i5 % bArr.length]) & 255;
            bArr2[i5] = bArr2[i4];
            bArr2[i4] = b5;
        }
        this.zzb = 0;
        this.zzc = 0;
    }

    public final void zza(byte[] bArr) {
        int i = this.zzb;
        int i4 = this.zzc;
        for (int i5 = 0; i5 < 256; i5++) {
            byte[] bArr2 = this.zza;
            i = (i + 1) & 255;
            byte b5 = bArr2[i];
            i4 = (i4 + b5) & 255;
            bArr2[i] = bArr2[i4];
            bArr2[i4] = b5;
            bArr[i5] = (byte) (bArr2[(bArr2[i] + b5) & 255] ^ bArr[i5]);
        }
        this.zzb = i;
        this.zzc = i4;
    }
}
