package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzhos {
    public static byte[] zza(byte[] bArr) {
        if (bArr.length == 16) {
            byte[] bArr2 = new byte[16];
            int i = 0;
            while (i < 16) {
                int i4 = i + 1;
                byte b5 = bArr[i];
                byte b6 = (byte) ((b5 + b5) & 254);
                bArr2[i] = b6;
                if (i < 15) {
                    bArr2[i] = (byte) (((bArr[i4] >> 7) & 1) | b6);
                }
                i = i4;
            }
            bArr2[15] = (byte) (((byte) ((bArr[0] >> 7) & 135)) ^ bArr2[15]);
            return bArr2;
        }
        throw new IllegalArgumentException("value must be a block.");
    }
}
