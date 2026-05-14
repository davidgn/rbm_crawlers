package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhkb {
    final long[] zza;
    final long[] zzb;
    final long[] zzc;

    public zzhkb(long[] jArr, long[] jArr2, long[] jArr3) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = jArr3;
    }

    public static zzhkb zza(zzhkb zzhkbVar, zzhka zzhkaVar) {
        zzhkb zzhkbVar2 = zzhkaVar.zza;
        long[] jArr = zzhkbVar.zza;
        long[] jArr2 = zzhkbVar2.zza;
        long[] jArr3 = zzhkaVar.zzb;
        zzhkk.zze(jArr, jArr2, jArr3);
        long[] jArr4 = zzhkbVar.zzb;
        long[] jArr5 = zzhkbVar2.zzb;
        long[] jArr6 = zzhkbVar2.zzc;
        zzhkk.zze(jArr4, jArr5, jArr6);
        zzhkk.zze(zzhkbVar.zzc, jArr6, jArr3);
        return zzhkbVar;
    }

    public final byte[] zzb() {
        long[] jArr = new long[10];
        long[] jArr2 = new long[10];
        long[] jArr3 = new long[10];
        long[] jArr4 = new long[10];
        long[] jArr5 = new long[10];
        long[] jArr6 = new long[10];
        long[] jArr7 = new long[10];
        long[] jArr8 = new long[10];
        long[] jArr9 = new long[10];
        long[] jArr10 = new long[10];
        long[] jArr11 = new long[10];
        long[] jArr12 = new long[10];
        long[] jArr13 = new long[10];
        long[] jArr14 = this.zzc;
        zzhkk.zzf(jArr4, jArr14);
        zzhkk.zzf(jArr13, jArr4);
        zzhkk.zzf(jArr12, jArr13);
        zzhkk.zze(jArr5, jArr12, jArr14);
        zzhkk.zze(jArr6, jArr5, jArr4);
        zzhkk.zzf(jArr12, jArr6);
        zzhkk.zze(jArr7, jArr12, jArr5);
        zzhkk.zzf(jArr12, jArr7);
        zzhkk.zzf(jArr13, jArr12);
        zzhkk.zzf(jArr12, jArr13);
        zzhkk.zzf(jArr13, jArr12);
        zzhkk.zzf(jArr12, jArr13);
        zzhkk.zze(jArr8, jArr12, jArr7);
        zzhkk.zzf(jArr12, jArr8);
        zzhkk.zzf(jArr13, jArr12);
        for (int i = 2; i < 10; i += 2) {
            zzhkk.zzf(jArr12, jArr13);
            zzhkk.zzf(jArr13, jArr12);
        }
        zzhkk.zze(jArr9, jArr13, jArr8);
        zzhkk.zzf(jArr12, jArr9);
        zzhkk.zzf(jArr13, jArr12);
        for (int i4 = 2; i4 < 20; i4 += 2) {
            zzhkk.zzf(jArr12, jArr13);
            zzhkk.zzf(jArr13, jArr12);
        }
        zzhkk.zze(jArr12, jArr13, jArr9);
        zzhkk.zzf(jArr13, jArr12);
        zzhkk.zzf(jArr12, jArr13);
        for (int i5 = 2; i5 < 10; i5 += 2) {
            zzhkk.zzf(jArr13, jArr12);
            zzhkk.zzf(jArr12, jArr13);
        }
        zzhkk.zze(jArr10, jArr12, jArr8);
        zzhkk.zzf(jArr12, jArr10);
        zzhkk.zzf(jArr13, jArr12);
        for (int i6 = 2; i6 < 50; i6 += 2) {
            zzhkk.zzf(jArr12, jArr13);
            zzhkk.zzf(jArr13, jArr12);
        }
        zzhkk.zze(jArr11, jArr13, jArr10);
        zzhkk.zzf(jArr13, jArr11);
        zzhkk.zzf(jArr12, jArr13);
        for (int i7 = 2; i7 < 100; i7 += 2) {
            zzhkk.zzf(jArr13, jArr12);
            zzhkk.zzf(jArr12, jArr13);
        }
        zzhkk.zze(jArr13, jArr12, jArr11);
        zzhkk.zzf(jArr12, jArr13);
        zzhkk.zzf(jArr13, jArr12);
        for (int i8 = 2; i8 < 50; i8 += 2) {
            zzhkk.zzf(jArr12, jArr13);
            zzhkk.zzf(jArr13, jArr12);
        }
        zzhkk.zze(jArr12, jArr13, jArr10);
        zzhkk.zzf(jArr13, jArr12);
        zzhkk.zzf(jArr12, jArr13);
        zzhkk.zzf(jArr13, jArr12);
        zzhkk.zzf(jArr12, jArr13);
        zzhkk.zzf(jArr13, jArr12);
        zzhkk.zze(jArr, jArr13, jArr6);
        zzhkk.zze(jArr2, this.zza, jArr);
        zzhkk.zze(jArr3, this.zzb, jArr);
        byte[] zzh = zzhkk.zzh(jArr3);
        zzh[31] = (byte) ((zzhkd.zzf(jArr2) << 7) ^ zzh[31]);
        return zzh;
    }

    public zzhkb() {
        this(new long[10], new long[10], new long[10]);
    }

    public zzhkb(zzhka zzhkaVar) {
        this();
        zza(this, zzhkaVar);
    }

    public zzhkb(zzhkb zzhkbVar) {
        this.zza = Arrays.copyOf(zzhkbVar.zza, 10);
        this.zzb = Arrays.copyOf(zzhkbVar.zzb, 10);
        this.zzc = Arrays.copyOf(zzhkbVar.zzc, 10);
    }
}
