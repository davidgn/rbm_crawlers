package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzhiz {
    public static byte[] zza(byte[] bArr, byte[] bArr2) {
        long zzc = zzc(bArr, 0, 0);
        long zzc2 = zzc(bArr, 3, 2) & 67108611;
        long zzc3 = zzc(bArr, 6, 4) & 67092735;
        long zzc4 = zzc(bArr, 9, 6) & 66076671;
        long zzc5 = zzc(bArr, 12, 8) & 1048575;
        int i = 17;
        byte[] bArr3 = new byte[17];
        long j5 = 0;
        int i4 = 0;
        long j6 = 0;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        while (true) {
            int length = bArr2.length;
            if (i4 >= length) {
                long j10 = j5 + (j6 >> 26);
                long j11 = j10 & 67108863;
                long j12 = j7 + (j10 >> 26);
                long j13 = j12 & 67108863;
                long j14 = j8 + (j12 >> 26);
                long j15 = j14 & 67108863;
                long j16 = ((j14 >> 26) * 5) + j9;
                long j17 = j16 >> 26;
                long j18 = j16 & 67108863;
                long j19 = j18 + 5;
                long j20 = (j6 & 67108863) + j17;
                long j21 = j20 + (j19 >> 26);
                long j22 = (j21 >> 26) + j11;
                long j23 = j13 + (j22 >> 26);
                long j24 = (j15 + (j23 >> 26)) - 67108864;
                long j25 = j24 >> 63;
                long j26 = ~j25;
                long j27 = (j20 & j25) | (j21 & 67108863 & j26);
                long j28 = (j11 & j25) | (j22 & 67108863 & j26);
                long j29 = (j13 & j25) | (j23 & 67108863 & j26);
                long j30 = (j15 & j25) | (j24 & j26);
                long zzb = (((j18 & j25) | (j19 & 67108863 & j26) | (j27 << 26)) & 4294967295L) + zzb(bArr, 16);
                long zzb2 = (((j27 >> 6) | (j28 << 20)) & 4294967295L) + zzb(bArr, 20);
                long zzb3 = (((j29 << 14) | (j28 >> 12)) & 4294967295L) + zzb(bArr, 24);
                long zzb4 = (((j29 >> 18) | (j30 << 8)) & 4294967295L) + zzb(bArr, 28);
                byte[] bArr4 = new byte[16];
                zzd(bArr4, zzb & 4294967295L, 0);
                long j31 = zzb2 + (zzb >> 32);
                zzd(bArr4, j31 & 4294967295L, 4);
                long j32 = zzb3 + (j31 >> 32);
                zzd(bArr4, j32 & 4294967295L, 8);
                zzd(bArr4, (zzb4 + (j32 >> 32)) & 4294967295L, 12);
                return bArr4;
            }
            int min = Math.min(16, length - i4);
            System.arraycopy(bArr2, i4, bArr3, 0, min);
            bArr3[min] = 1;
            if (min != 16) {
                Arrays.fill(bArr3, min + 1, i, (byte) 0);
            }
            long j33 = zzc5 * 5;
            long j34 = zzc4 * 5;
            long j35 = zzc3 * 5;
            long zzc6 = j9 + zzc(bArr3, 0, 0);
            long zzc7 = j6 + zzc(bArr3, 3, 2);
            long zzc8 = j5 + zzc(bArr3, 6, 4);
            long zzc9 = j7 + zzc(bArr3, 9, 6);
            long zzc10 = j8 + (zzc(bArr3, 12, 8) | (bArr3[16] << 24));
            long j36 = zzc7 * zzc;
            long j37 = zzc7 * zzc2;
            long j38 = zzc8 * zzc;
            long j39 = zzc7 * zzc3;
            long j40 = zzc8 * zzc2;
            long j41 = zzc9 * zzc;
            long j42 = zzc7 * zzc4;
            long j43 = zzc8 * zzc3;
            long j44 = zzc9 * zzc2;
            long j45 = zzc10 * zzc;
            long j46 = (zzc2 * 5 * zzc10) + (zzc9 * j35) + (zzc8 * j34) + (zzc7 * j33) + (zzc6 * zzc);
            long j47 = j46 & 67108863;
            long j48 = zzc9 * j34;
            long j49 = j35 * zzc10;
            long j50 = j49 + j48 + (zzc8 * j33) + (zzc6 * zzc2) + j36 + (j46 >> 26);
            long j51 = j34 * zzc10;
            long j52 = j51 + (zzc9 * j33) + (zzc6 * zzc3) + j37 + j38 + (j50 >> 26);
            long j53 = (zzc10 * j33) + (zzc6 * zzc4) + j39 + j40 + j41 + (j52 >> 26);
            long j54 = (zzc6 * zzc5) + j42 + j43 + j44 + j45 + (j53 >> 26);
            long j55 = ((j54 >> 26) * 5) + j47;
            j6 = (j50 & 67108863) + (j55 >> 26);
            i4 += 16;
            j5 = j52 & 67108863;
            j7 = j53 & 67108863;
            j8 = j54 & 67108863;
            i = 17;
            j9 = j55 & 67108863;
        }
    }

    private static long zzb(byte[] bArr, int i) {
        int i4 = (bArr[i + 1] & 255) << 8;
        return (((bArr[i + 3] & 255) << 24) | i4 | (bArr[i] & 255) | ((bArr[i + 2] & 255) << 16)) & 4294967295L;
    }

    private static long zzc(byte[] bArr, int i, int i4) {
        return (zzb(bArr, i) >> i4) & 67108863;
    }

    private static void zzd(byte[] bArr, long j5, int i) {
        for (int i4 = 0; i4 < 4; i4++) {
            bArr[i + i4] = (byte) (255 & j5);
            j5 >>= 8;
        }
    }
}
