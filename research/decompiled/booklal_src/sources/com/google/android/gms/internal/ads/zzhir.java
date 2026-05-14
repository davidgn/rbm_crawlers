package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.util.Arrays;
/* loaded from: classes.dex */
final class zzhir {
    private static final int[] zza = zzd(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});

    public static void zza(int[] iArr, int[] iArr2) {
        int[] iArr3 = zza;
        int length = iArr3.length;
        System.arraycopy(iArr3, 0, iArr, 0, length);
        System.arraycopy(iArr2, 0, iArr, length, 8);
    }

    public static void zzb(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            zzc(iArr, 0, 4, 8, 12);
            zzc(iArr, 1, 5, 9, 13);
            zzc(iArr, 2, 6, 10, 14);
            zzc(iArr, 3, 7, 11, 15);
            zzc(iArr, 0, 5, 10, 15);
            zzc(iArr, 1, 6, 11, 12);
            zzc(iArr, 2, 7, 8, 13);
            zzc(iArr, 3, 4, 9, 14);
        }
    }

    public static void zzc(int[] iArr, int i, int i4, int i5, int i6) {
        int i7 = iArr[i] + iArr[i4];
        iArr[i] = i7;
        int i8 = i7 ^ iArr[i6];
        int i9 = (i8 >>> (-16)) | (i8 << 16);
        iArr[i6] = i9;
        int i10 = iArr[i5] + i9;
        iArr[i5] = i10;
        int i11 = iArr[i4] ^ i10;
        int i12 = (i11 >>> (-12)) | (i11 << 12);
        iArr[i4] = i12;
        int i13 = iArr[i] + i12;
        iArr[i] = i13;
        int i14 = iArr[i6] ^ i13;
        int i15 = (i14 >>> (-8)) | (i14 << 8);
        iArr[i6] = i15;
        int i16 = iArr[i5] + i15;
        iArr[i5] = i16;
        int i17 = iArr[i4] ^ i16;
        iArr[i4] = (i17 >>> (-7)) | (i17 << 7);
    }

    public static int[] zzd(byte[] bArr) {
        if ((bArr.length & 3) == 0) {
            IntBuffer asIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
            int[] iArr = new int[asIntBuffer.remaining()];
            asIntBuffer.get(iArr);
            return iArr;
        }
        throw new IllegalArgumentException("invalid input length");
    }

    public static int[] zze(int[] iArr, int[] iArr2) {
        zza(r0, iArr);
        int[] iArr3 = {0, 0, 0, 0, iArr3[12], iArr3[13], iArr3[14], iArr3[15], 0, 0, 0, 0, iArr2[0], iArr2[1], iArr2[2], iArr2[3]};
        zzb(iArr3);
        return Arrays.copyOf(iArr3, 8);
    }
}
