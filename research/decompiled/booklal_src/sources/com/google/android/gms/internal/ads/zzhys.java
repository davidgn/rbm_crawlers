package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.ECParameterSpec;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzhys {
    public static byte[] zza(byte[] bArr) {
        byte[] bArr2;
        int i;
        int length = bArr.length;
        if ((length & 1) != 0 || length == 0 || length > 132) {
            throw new GeneralSecurityException("Invalid IEEE_P1363 encoding");
        }
        int i4 = length >> 1;
        byte[] zzc = zzc(Arrays.copyOf(bArr, i4));
        byte[] zzc2 = zzc(Arrays.copyOfRange(bArr, i4, length));
        int length2 = zzc.length;
        int length3 = zzc2.length;
        int i5 = length2 + 4 + length3;
        if (i5 >= 128) {
            bArr2 = new byte[i5 + 3];
            bArr2[0] = 48;
            bArr2[1] = -127;
            bArr2[2] = (byte) i5;
            i = 3;
        } else {
            bArr2 = new byte[i5 + 2];
            bArr2[0] = 48;
            bArr2[1] = (byte) i5;
            i = 2;
        }
        int i6 = i + 1;
        bArr2[i] = 2;
        int i7 = i + 2;
        bArr2[i6] = (byte) length2;
        System.arraycopy(zzc, 0, bArr2, i7, length2);
        int i8 = i7 + length2;
        bArr2[i8] = 2;
        bArr2[i8 + 1] = (byte) length3;
        System.arraycopy(zzc2, 0, bArr2, i8 + 2, length3);
        return bArr2;
    }

    public static ECParameterSpec zzb(zzhyq zzhyqVar) {
        int ordinal = zzhyqVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    return zzhkh.zzc;
                }
                throw new NoSuchAlgorithmException("curve not implemented:".concat(zzhyqVar.toString()));
            }
            return zzhkh.zzb;
        }
        return zzhkh.zza;
    }

    private static byte[] zzc(byte[] bArr) {
        int length;
        int i = 0;
        while (true) {
            length = bArr.length;
            if (i >= length || bArr[i] != 0) {
                break;
            }
            i++;
        }
        if (i == length) {
            i = length - 1;
        }
        int i4 = (bArr[i] & 128) == 128 ? 1 : 0;
        int i5 = length - i;
        byte[] bArr2 = new byte[i5 + i4];
        System.arraycopy(bArr, i, bArr2, i4, i5);
        return bArr2;
    }
}
