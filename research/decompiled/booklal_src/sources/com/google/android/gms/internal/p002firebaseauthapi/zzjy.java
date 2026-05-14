package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzjy  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzjy {
    private static final int[] zza = {0, 3, 6, 9, 12, 16, 19, 22, 25, 28};
    private static final int[] zzb = {0, 2, 3, 5, 6, 0, 1, 3, 4, 6};
    private static final int[] zzc = {67108863, 33554431};
    private static final int[] zzd = {26, 25};

    public static void zza(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[19];
        zzb(jArr4, jArr2, jArr3);
        zzc(jArr4, jArr);
    }

    public static void zzb(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr[0] = jArr2[0] * jArr3[0];
        long j5 = jArr2[0];
        long j6 = jArr2[1];
        long j7 = jArr3[0];
        jArr[1] = (j6 * j7) + (jArr3[1] * j5);
        long j8 = jArr2[1];
        long j9 = jArr3[1];
        jArr[2] = ((j8 + j8) * j9) + (jArr3[2] * j5) + (jArr2[2] * j7);
        long j10 = jArr3[2];
        long j11 = jArr2[2];
        jArr[3] = (j8 * j10) + (j11 * j9) + (jArr3[3] * j5) + (jArr2[3] * j7);
        long j12 = jArr3[3];
        long j13 = jArr2[3];
        long j14 = (j8 * j12) + (j13 * j9);
        jArr[4] = j14 + j14 + (j11 * j10) + (jArr3[4] * j5) + (jArr2[4] * j7);
        long j15 = jArr3[4];
        long j16 = jArr2[4];
        jArr[5] = (j11 * j12) + (j13 * j10) + (j8 * j15) + (j16 * j9) + (jArr3[5] * j5) + (jArr2[5] * j7);
        long j17 = jArr3[5];
        long j18 = jArr2[5];
        long j19 = (j13 * j12) + (j8 * j17) + (j18 * j9);
        jArr[6] = j19 + j19 + (j11 * j15) + (j16 * j10) + (jArr3[6] * j5) + (jArr2[6] * j7);
        long j20 = jArr3[6];
        long j21 = jArr2[6];
        jArr[7] = (j13 * j15) + (j16 * j12) + (j11 * j17) + (j18 * j10) + (j8 * j20) + (j21 * j9) + (jArr3[7] * j5) + (jArr2[7] * j7);
        long j22 = jArr3[7];
        long j23 = jArr2[7];
        long j24 = (j13 * j17) + (j18 * j12) + (j8 * j22) + (j23 * j9);
        jArr[8] = j24 + j24 + (j16 * j15) + (j11 * j20) + (j21 * j10) + (jArr3[8] * j5) + (jArr2[8] * j7);
        long j25 = jArr3[8];
        long j26 = jArr2[8];
        jArr[9] = (j16 * j17) + (j18 * j15) + (j13 * j20) + (j21 * j12) + (j11 * j22) + (j23 * j10) + (j8 * j25) + (j26 * j9) + (j5 * jArr3[9]) + (jArr2[9] * j7);
        long j27 = jArr3[9];
        long j28 = jArr2[9];
        long j29 = (j18 * j17) + (j13 * j22) + (j23 * j12) + (j8 * j27) + (j9 * j28);
        jArr[10] = j29 + j29 + (j16 * j20) + (j21 * j15) + (j11 * j25) + (j26 * j10);
        jArr[11] = (j18 * j20) + (j21 * j17) + (j16 * j22) + (j23 * j15) + (j13 * j25) + (j26 * j12) + (j11 * j27) + (j10 * j28);
        long j30 = (j18 * j22) + (j23 * j17) + (j13 * j27) + (j12 * j28);
        jArr[12] = j30 + j30 + (j21 * j20) + (j16 * j25) + (j26 * j15);
        jArr[13] = (j21 * j22) + (j23 * j20) + (j18 * j25) + (j26 * j17) + (j16 * j27) + (j15 * j28);
        long j31 = (j23 * j22) + (j18 * j27) + (j17 * j28);
        jArr[14] = j31 + j31 + (j21 * j25) + (j26 * j20);
        jArr[15] = (j23 * j25) + (j26 * j22) + (j21 * j27) + (j20 * j28);
        long j32 = (j22 * j28) + (j23 * j27);
        jArr[16] = j32 + j32 + (j26 * j25);
        jArr[17] = (j25 * j28) + (j26 * j27);
        jArr[18] = (j28 + j28) * j27;
    }

    public static void zzc(long[] jArr, long[] jArr2) {
        zze(jArr);
        zzd(jArr);
        System.arraycopy(jArr, 0, jArr2, 0, 10);
    }

    public static void zzd(long[] jArr) {
        jArr[10] = 0;
        int i = 0;
        while (i < 10) {
            long j5 = jArr[i];
            long j6 = j5 / 67108864;
            jArr[i] = j5 - (j6 << 26);
            int i4 = i + 1;
            long j7 = jArr[i4] + j6;
            jArr[i4] = j7;
            long j8 = j7 / 33554432;
            jArr[i4] = j7 - (j8 << 25);
            i += 2;
            jArr[i] = jArr[i] + j8;
        }
        long j9 = jArr[0];
        long j10 = jArr[10];
        long j11 = j9 + (j10 << 4);
        jArr[0] = j11;
        long j12 = j10 + j10 + j11;
        jArr[0] = j12;
        long j13 = j12 + j10;
        jArr[0] = j13;
        jArr[10] = 0;
        long j14 = j13 / 67108864;
        jArr[0] = j13 - (j14 << 26);
        jArr[1] = jArr[1] + j14;
    }

    public static void zze(long[] jArr) {
        long j5 = jArr[8];
        long j6 = jArr[18];
        long j7 = j5 + (j6 << 4);
        jArr[8] = j7;
        long j8 = j6 + j6 + j7;
        jArr[8] = j8;
        jArr[8] = j8 + j6;
        long j9 = jArr[7];
        long j10 = jArr[17];
        long j11 = j9 + (j10 << 4);
        jArr[7] = j11;
        long j12 = j10 + j10 + j11;
        jArr[7] = j12;
        jArr[7] = j12 + j10;
        long j13 = jArr[6];
        long j14 = jArr[16];
        long j15 = j13 + (j14 << 4);
        jArr[6] = j15;
        long j16 = j14 + j14 + j15;
        jArr[6] = j16;
        jArr[6] = j16 + j14;
        long j17 = jArr[5];
        long j18 = jArr[15];
        long j19 = j17 + (j18 << 4);
        jArr[5] = j19;
        long j20 = j18 + j18 + j19;
        jArr[5] = j20;
        jArr[5] = j20 + j18;
        long j21 = jArr[4];
        long j22 = jArr[14];
        long j23 = j21 + (j22 << 4);
        jArr[4] = j23;
        long j24 = j22 + j22 + j23;
        jArr[4] = j24;
        jArr[4] = j24 + j22;
        long j25 = jArr[3];
        long j26 = jArr[13];
        long j27 = j25 + (j26 << 4);
        jArr[3] = j27;
        long j28 = j26 + j26 + j27;
        jArr[3] = j28;
        jArr[3] = j28 + j26;
        long j29 = jArr[2];
        long j30 = jArr[12];
        long j31 = j29 + (j30 << 4);
        jArr[2] = j31;
        long j32 = j30 + j30 + j31;
        jArr[2] = j32;
        jArr[2] = j32 + j30;
        long j33 = jArr[1];
        long j34 = jArr[11];
        long j35 = j33 + (j34 << 4);
        jArr[1] = j35;
        long j36 = j34 + j34 + j35;
        jArr[1] = j36;
        jArr[1] = j36 + j34;
        long j37 = jArr[0];
        long j38 = jArr[10];
        long j39 = j37 + (j38 << 4);
        jArr[0] = j39;
        long j40 = j38 + j38 + j39;
        jArr[0] = j40;
        jArr[0] = j40 + j38;
    }

    public static void zzf(long[] jArr, long[] jArr2, long j5) {
        for (int i = 0; i < 10; i++) {
            jArr[i] = jArr2[i] * j5;
        }
    }

    public static void zzg(long[] jArr, long[] jArr2) {
        long j5 = jArr2[0];
        long j6 = j5 * j5;
        long j7 = jArr2[1];
        long j8 = (j5 + j5) * j7;
        long j9 = jArr2[2];
        long j10 = (j5 * j9) + (j7 * j7);
        long j11 = jArr2[3];
        long j12 = (j5 * j11) + (j7 * j9);
        long j13 = jArr2[4];
        long j14 = (j9 * j9) + (j7 * 4 * j11) + ((j5 + j5) * j13);
        long j15 = jArr2[5];
        long j16 = (j9 * j11) + (j7 * j13) + (j5 * j15);
        long j17 = jArr2[6];
        long j18 = (j11 * j11) + (j9 * j13) + (j5 * j17) + ((j7 + j7) * j15);
        long j19 = jArr2[7];
        long j20 = (j11 * j13) + (j9 * j15) + (j7 * j17) + (j5 * j19);
        long j21 = jArr2[8];
        long j22 = (j11 * j15) + (j7 * j19);
        long j23 = j22 + j22 + (j9 * j17) + (j5 * j21);
        long j24 = j23 + j23 + (j13 * j13);
        long j25 = jArr2[9];
        long j26 = (j13 * j15) + (j11 * j17) + (j9 * j19) + (j7 * j21) + (j5 * j25);
        long j27 = (j7 * j25) + (j11 * j19);
        long j28 = j27 + j27 + (j15 * j15) + (j13 * j17) + (j9 * j21);
        long j29 = (j15 * j17) + (j13 * j19) + (j11 * j21) + (j9 * j25);
        long j30 = (j11 * j25) + (j15 * j19);
        long j31 = j30 + j30 + (j13 * j21);
        long j32 = j31 + j31 + (j17 * j17);
        long j33 = (j17 * j19) + (j15 * j21) + (j13 * j25);
        long j34 = (j19 * j19) + (j17 * j21) + ((j15 + j15) * j25);
        long j35 = (j17 * j25) + (j19 * j21);
        zzc(new long[]{j6, j8, j10 + j10, j12 + j12, j14, j16 + j16, j18 + j18, j20 + j20, j24, j26 + j26, j28 + j28, j29 + j29, j32, j33 + j33, j34 + j34, j35 + j35, (j19 * 4 * j25) + (j21 * j21), (j21 + j21) * j25, (j25 + j25) * j25}, jArr);
    }

    public static void zzh(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i = 0; i < 10; i++) {
            jArr[i] = jArr2[i] - jArr3[i];
        }
    }

    public static void zzi(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i = 0; i < 10; i++) {
            jArr[i] = jArr2[i] + jArr3[i];
        }
    }

    public static byte[] zzj(long[] jArr) {
        int i;
        int i4;
        long j5;
        long j6;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        long[] copyOf = Arrays.copyOf(jArr, 10);
        int i12 = 0;
        while (true) {
            if (i12 >= 2) {
                break;
            }
            int i13 = 0;
            while (i13 < 9) {
                long j7 = copyOf[i13];
                copyOf[i13] = j7 + (i11 << i10);
                i13++;
                copyOf[i13] = copyOf[i13] - (-((int) (((j7 >> 31) & j7) >> zzd[i13 & 1])));
            }
            long j8 = copyOf[9];
            copyOf[9] = j8 + (i9 << 25);
            copyOf[0] = copyOf[0] - ((-((int) (((j8 >> 31) & j8) >> 25))) * 19);
            i12++;
        }
        long j9 = copyOf[0];
        copyOf[0] = j9 + (i4 << 26);
        copyOf[1] = copyOf[1] - (-((int) (((j9 >> 31) & j9) >> 26)));
        int i14 = 0;
        for (i = 2; i14 < i; i = 2) {
            int i15 = 0;
            while (i15 < 9) {
                long j10 = copyOf[i15];
                long j11 = j10 >> zzd[i15 & 1];
                copyOf[i15] = j10 & zzc[i8];
                i15++;
                copyOf[i15] = copyOf[i15] + ((int) j11);
            }
            i14++;
        }
        copyOf[9] = copyOf[9] & 33554431;
        copyOf[0] = (((int) (j5 >> 25)) * 19) + copyOf[0];
        int i16 = ~((((int) j6) - 67108845) >> 31);
        for (int i17 = 1; i17 < 10; i17++) {
            int i18 = ~(((int) copyOf[i17]) ^ zzc[i17 & 1]);
            int i19 = i18 & (i18 << 16);
            int i20 = i19 & (i19 << 8);
            int i21 = i20 & (i20 << 4);
            int i22 = i21 & (i21 << 2);
            i16 &= (i22 & (i22 + i22)) >> 31;
        }
        copyOf[0] = copyOf[0] - (67108845 & i16);
        long j12 = 33554431 & i16;
        copyOf[1] = copyOf[1] - j12;
        for (int i23 = 2; i23 < 10; i23 += 2) {
            copyOf[i23] = copyOf[i23] - (67108863 & i16);
            int i24 = i23 + 1;
            copyOf[i24] = copyOf[i24] - j12;
        }
        for (int i25 = 0; i25 < 10; i25++) {
            copyOf[i25] = copyOf[i25] << zzb[i25];
        }
        byte[] bArr = new byte[32];
        for (int i26 = 0; i26 < 10; i26++) {
            int i27 = zza[i26];
            long j13 = copyOf[i26];
            bArr[i27] = (byte) (bArr[i27] | (j13 & 255));
            bArr[i27 + 1] = (byte) (bArr[i5] | ((j13 >> 8) & 255));
            bArr[i27 + 2] = (byte) (bArr[i6] | ((j13 >> 16) & 255));
            bArr[i27 + 3] = (byte) (bArr[i7] | ((j13 >> 24) & 255));
        }
        return bArr;
    }

    public static long[] zzk(byte[] bArr) {
        long[] jArr = new long[10];
        for (int i = 0; i < 10; i++) {
            int i4 = zza[i];
            jArr[i] = (((((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8)) | ((bArr[i4 + 2] & 255) << 16)) | ((bArr[i4 + 3] & 255) << 24)) >> zzb[i]) & zzc[i & 1];
        }
        return jArr;
    }
}
