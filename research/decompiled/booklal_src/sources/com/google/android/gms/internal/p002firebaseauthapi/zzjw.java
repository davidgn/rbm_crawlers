package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzjw  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzjw {
    static final byte[][] zza = {new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new byte[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new byte[]{-32, -21, 122, 124, 59, 65, -72, -82, 22, 86, -29, -6, -15, -97, -60, 106, -38, 9, -115, -21, -100, 50, -79, -3, -122, 98, 5, 22, 95, 73, -72, 0}, new byte[]{95, -100, -107, -68, -93, 80, -116, 36, -79, -48, -79, 85, -100, -125, -17, 91, 4, 68, 92, -60, 88, 28, -114, -122, -40, 34, 78, -35, -48, -97, 17, 87}, new byte[]{-20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, Byte.MAX_VALUE}, new byte[]{-19, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, Byte.MAX_VALUE}, new byte[]{-18, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, Byte.MAX_VALUE}};

    public static void zza(long[] jArr, byte[] bArr, byte[] bArr2) {
        int i = 32;
        if (bArr2.length != 32) {
            throw new InvalidKeyException("Public key length is not 32-byte");
        }
        byte[] copyOf = Arrays.copyOf(bArr2, 32);
        copyOf[31] = (byte) (copyOf[31] & Byte.MAX_VALUE);
        int i4 = 0;
        for (int i5 = 0; i5 < 7; i5++) {
            byte[][] bArr3 = zza;
            if (MessageDigest.isEqual(bArr3[i5], copyOf)) {
                throw new InvalidKeyException("Banned public key: ".concat(zzvl.zza(bArr3[i5])));
            }
        }
        long[] zzk = zzjy.zzk(copyOf);
        long[] jArr2 = new long[19];
        long[] jArr3 = new long[19];
        jArr3[0] = 1;
        long[] jArr4 = new long[19];
        jArr4[0] = 1;
        long[] jArr5 = new long[19];
        long[] jArr6 = new long[19];
        long[] jArr7 = new long[19];
        jArr7[0] = 1;
        long[] jArr8 = new long[19];
        long[] jArr9 = new long[19];
        jArr9[0] = 1;
        int i6 = 10;
        System.arraycopy(zzk, 0, jArr2, 0, 10);
        int i7 = 0;
        while (i7 < i) {
            int i8 = bArr[31 - i7] & 255;
            while (i4 < 8) {
                int i9 = (i8 >> (7 - i4)) & 1;
                zzb(jArr4, jArr2, i9);
                zzb(jArr5, jArr3, i9);
                long[] copyOf2 = Arrays.copyOf(jArr4, i6);
                int i10 = i8;
                long[] jArr10 = new long[19];
                long[] jArr11 = new long[19];
                int i11 = i7;
                long[] jArr12 = new long[19];
                int i12 = i4;
                long[] jArr13 = new long[19];
                long[] jArr14 = new long[19];
                long[] jArr15 = jArr9;
                long[] jArr16 = new long[19];
                long[] jArr17 = new long[19];
                zzjy.zzi(jArr4, jArr4, jArr5);
                zzjy.zzh(jArr5, copyOf2, jArr5);
                long[] copyOf3 = Arrays.copyOf(jArr2, 10);
                zzjy.zzi(jArr2, jArr2, jArr3);
                zzjy.zzh(jArr3, copyOf3, jArr3);
                zzjy.zzb(jArr13, jArr2, jArr5);
                zzjy.zzb(jArr14, jArr4, jArr3);
                zzjy.zze(jArr13);
                zzjy.zzd(jArr13);
                zzjy.zze(jArr14);
                zzjy.zzd(jArr14);
                long[] jArr18 = jArr2;
                System.arraycopy(jArr13, 0, copyOf3, 0, 10);
                zzjy.zzi(jArr13, jArr13, jArr14);
                zzjy.zzh(jArr14, copyOf3, jArr14);
                zzjy.zzg(jArr17, jArr13);
                zzjy.zzg(jArr16, jArr14);
                zzjy.zzb(jArr14, jArr16, zzk);
                zzjy.zze(jArr14);
                zzjy.zzd(jArr14);
                System.arraycopy(jArr17, 0, jArr6, 0, 10);
                System.arraycopy(jArr14, 0, jArr7, 0, 10);
                zzjy.zzg(jArr11, jArr4);
                zzjy.zzg(jArr12, jArr5);
                zzjy.zzb(jArr8, jArr11, jArr12);
                zzjy.zze(jArr8);
                zzjy.zzd(jArr8);
                zzjy.zzh(jArr12, jArr11, jArr12);
                Arrays.fill(jArr10, 10, 18, 0L);
                zzjy.zzf(jArr10, jArr12, 121665L);
                zzjy.zzd(jArr10);
                zzjy.zzi(jArr10, jArr10, jArr11);
                zzjy.zzb(jArr15, jArr12, jArr10);
                zzjy.zze(jArr15);
                zzjy.zzd(jArr15);
                zzb(jArr8, jArr6, i9);
                zzb(jArr15, jArr7, i9);
                i4 = i12 + 1;
                jArr2 = jArr6;
                i8 = i10;
                i7 = i11;
                jArr6 = jArr18;
                i6 = 10;
                long[] jArr19 = jArr7;
                jArr7 = jArr3;
                jArr3 = jArr19;
                long[] jArr20 = jArr8;
                jArr8 = jArr4;
                jArr4 = jArr20;
                jArr9 = jArr5;
                jArr5 = jArr15;
            }
            i7++;
            i = 32;
            i4 = 0;
            i6 = 10;
        }
        int i13 = i6;
        long[] jArr21 = new long[i13];
        long[] jArr22 = new long[i13];
        long[] jArr23 = new long[i13];
        long[] jArr24 = new long[i13];
        long[] jArr25 = new long[i13];
        long[] jArr26 = new long[i13];
        long[] jArr27 = new long[i13];
        long[] jArr28 = new long[i13];
        long[] jArr29 = new long[i13];
        long[] jArr30 = new long[i13];
        long[] jArr31 = jArr2;
        long[] jArr32 = new long[i13];
        zzjy.zzg(jArr22, jArr5);
        zzjy.zzg(jArr32, jArr22);
        zzjy.zzg(jArr30, jArr32);
        zzjy.zza(jArr23, jArr30, jArr5);
        zzjy.zza(jArr24, jArr23, jArr22);
        zzjy.zzg(jArr30, jArr24);
        zzjy.zza(jArr25, jArr30, jArr23);
        zzjy.zzg(jArr30, jArr25);
        zzjy.zzg(jArr32, jArr30);
        zzjy.zzg(jArr30, jArr32);
        zzjy.zzg(jArr32, jArr30);
        zzjy.zzg(jArr30, jArr32);
        zzjy.zza(jArr26, jArr30, jArr25);
        zzjy.zzg(jArr30, jArr26);
        zzjy.zzg(jArr32, jArr30);
        for (int i14 = 2; i14 < 10; i14 += 2) {
            zzjy.zzg(jArr30, jArr32);
            zzjy.zzg(jArr32, jArr30);
        }
        zzjy.zza(jArr27, jArr32, jArr26);
        zzjy.zzg(jArr30, jArr27);
        zzjy.zzg(jArr32, jArr30);
        for (int i15 = 2; i15 < 20; i15 += 2) {
            zzjy.zzg(jArr30, jArr32);
            zzjy.zzg(jArr32, jArr30);
        }
        zzjy.zza(jArr30, jArr32, jArr27);
        zzjy.zzg(jArr32, jArr30);
        zzjy.zzg(jArr30, jArr32);
        for (int i16 = 2; i16 < 10; i16 += 2) {
            zzjy.zzg(jArr32, jArr30);
            zzjy.zzg(jArr30, jArr32);
        }
        zzjy.zza(jArr28, jArr30, jArr26);
        zzjy.zzg(jArr30, jArr28);
        zzjy.zzg(jArr32, jArr30);
        for (int i17 = 2; i17 < 50; i17 += 2) {
            zzjy.zzg(jArr30, jArr32);
            zzjy.zzg(jArr32, jArr30);
        }
        zzjy.zza(jArr29, jArr32, jArr28);
        zzjy.zzg(jArr32, jArr29);
        zzjy.zzg(jArr30, jArr32);
        for (int i18 = 2; i18 < 100; i18 += 2) {
            zzjy.zzg(jArr32, jArr30);
            zzjy.zzg(jArr30, jArr32);
        }
        zzjy.zza(jArr32, jArr30, jArr29);
        zzjy.zzg(jArr30, jArr32);
        zzjy.zzg(jArr32, jArr30);
        for (int i19 = 2; i19 < 50; i19 += 2) {
            zzjy.zzg(jArr30, jArr32);
            zzjy.zzg(jArr32, jArr30);
        }
        zzjy.zza(jArr30, jArr32, jArr28);
        zzjy.zzg(jArr32, jArr30);
        zzjy.zzg(jArr30, jArr32);
        zzjy.zzg(jArr32, jArr30);
        zzjy.zzg(jArr30, jArr32);
        zzjy.zzg(jArr32, jArr30);
        zzjy.zza(jArr21, jArr32, jArr24);
        zzjy.zza(jArr, jArr4, jArr21);
        long[] jArr33 = new long[10];
        long[] jArr34 = new long[10];
        long[] jArr35 = new long[11];
        long[] jArr36 = new long[11];
        long[] jArr37 = new long[11];
        zzjy.zza(jArr33, zzk, jArr);
        zzjy.zzi(jArr34, zzk, jArr);
        long[] jArr38 = new long[10];
        jArr38[0] = 486662;
        zzjy.zzi(jArr36, jArr34, jArr38);
        zzjy.zza(jArr36, jArr36, jArr3);
        zzjy.zzi(jArr36, jArr36, jArr31);
        zzjy.zza(jArr36, jArr36, jArr33);
        zzjy.zza(jArr36, jArr36, jArr31);
        zzjy.zzf(jArr35, jArr36, 4L);
        zzjy.zzd(jArr35);
        zzjy.zza(jArr36, jArr33, jArr3);
        zzjy.zzh(jArr36, jArr36, jArr3);
        zzjy.zza(jArr37, jArr34, jArr31);
        zzjy.zzi(jArr36, jArr36, jArr37);
        zzjy.zzg(jArr36, jArr36);
        if (!MessageDigest.isEqual(zzjy.zzj(jArr35), zzjy.zzj(jArr36))) {
            throw new IllegalStateException("Arithmetic error in curve multiplication with the public key: ".concat(zzvl.zza(bArr2)));
        }
    }

    public static void zzb(long[] jArr, long[] jArr2, int i) {
        for (int i4 = 0; i4 < 10; i4++) {
            int i5 = (int) jArr[i4];
            int i6 = (-i) & (((int) jArr2[i4]) ^ i5);
            jArr[i4] = i5 ^ i6;
            jArr2[i4] = i6 ^ ((int) jArr2[i4]);
        }
    }
}
