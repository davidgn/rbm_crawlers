package com.google.android.gms.internal.ads;

import java.lang.reflect.Array;
import java.math.BigInteger;
/* loaded from: classes.dex */
final class zzhkf {
    static final long[] zza;
    static final long[] zzb;
    static final long[] zzc;
    static final zzhjy[][] zzd;
    static final zzhjy[] zze;
    private static final BigInteger zzf;
    private static final BigInteger zzg;
    private static final BigInteger zzh;
    private static final BigInteger zzi;

    static {
        BigInteger subtract = BigInteger.valueOf(2L).pow(255).subtract(BigInteger.valueOf(19L));
        zzf = subtract;
        BigInteger mod = BigInteger.valueOf(-121665L).multiply(BigInteger.valueOf(121666L).modInverse(subtract)).mod(subtract);
        zzg = mod;
        BigInteger mod2 = BigInteger.valueOf(2L).multiply(mod).mod(subtract);
        zzh = mod2;
        BigInteger valueOf = BigInteger.valueOf(2L);
        BigInteger bigInteger = BigInteger.ONE;
        BigInteger modPow = valueOf.modPow(subtract.subtract(bigInteger).divide(BigInteger.valueOf(4L)), subtract);
        zzi = modPow;
        zzhke zzhkeVar = new zzhke(null);
        zzhkeVar.zzd(BigInteger.valueOf(4L).multiply(BigInteger.valueOf(5L).modInverse(subtract)).mod(subtract));
        BigInteger zzc2 = zzhkeVar.zzc();
        BigInteger multiply = zzc2.pow(2).subtract(bigInteger).multiply(mod.multiply(zzc2.pow(2)).add(bigInteger).modInverse(subtract));
        BigInteger modPow2 = multiply.modPow(subtract.add(BigInteger.valueOf(3L)).divide(BigInteger.valueOf(8L)), subtract);
        if (!modPow2.pow(2).subtract(multiply).mod(subtract).equals(BigInteger.ZERO)) {
            modPow2 = modPow2.multiply(modPow).mod(subtract);
        }
        if (modPow2.testBit(0)) {
            modPow2 = subtract.subtract(modPow2);
        }
        zzhkeVar.zzb(modPow2);
        zza = zzhkk.zzg(zzb(mod));
        zzb = zzhkk.zzg(zzb(mod2));
        zzc = zzhkk.zzg(zzb(modPow));
        zzd = (zzhjy[][]) Array.newInstance(zzhjy.class, 32, 8);
        zzhke zzhkeVar2 = zzhkeVar;
        for (int i = 0; i < 32; i++) {
            zzhke zzhkeVar3 = zzhkeVar2;
            for (int i4 = 0; i4 < 8; i4++) {
                zzd[i][i4] = zzc(zzhkeVar3);
                zzhkeVar3 = zza(zzhkeVar3, zzhkeVar2);
            }
            for (int i5 = 0; i5 < 8; i5++) {
                zzhkeVar2 = zza(zzhkeVar2, zzhkeVar2);
            }
        }
        zzhke zza2 = zza(zzhkeVar, zzhkeVar);
        zze = new zzhjy[8];
        for (int i6 = 0; i6 < 8; i6++) {
            zze[i6] = zzc(zzhkeVar);
            zzhkeVar = zza(zzhkeVar, zza2);
        }
    }

    private static zzhke zza(zzhke zzhkeVar, zzhke zzhkeVar2) {
        zzhke zzhkeVar3 = new zzhke(null);
        BigInteger multiply = zzg.multiply(zzhkeVar.zza().multiply(zzhkeVar2.zza()).multiply(zzhkeVar.zzc()).multiply(zzhkeVar2.zzc()));
        BigInteger bigInteger = zzf;
        BigInteger mod = multiply.mod(bigInteger);
        BigInteger add = zzhkeVar.zza().multiply(zzhkeVar2.zzc()).add(zzhkeVar2.zza().multiply(zzhkeVar.zzc()));
        BigInteger bigInteger2 = BigInteger.ONE;
        zzhkeVar3.zzb(add.multiply(bigInteger2.add(mod).modInverse(bigInteger)).mod(bigInteger));
        zzhkeVar3.zzd(zzhkeVar.zzc().multiply(zzhkeVar2.zzc()).add(zzhkeVar.zza().multiply(zzhkeVar2.zza())).multiply(bigInteger2.subtract(mod).modInverse(bigInteger)).mod(bigInteger));
        return zzhkeVar3;
    }

    private static byte[] zzb(BigInteger bigInteger) {
        byte[] bArr = new byte[32];
        byte[] byteArray = bigInteger.toByteArray();
        int length = byteArray.length;
        System.arraycopy(byteArray, 0, bArr, 32 - length, length);
        for (int i = 0; i < 16; i++) {
            byte b5 = bArr[i];
            int i4 = 31 - i;
            bArr[i] = bArr[i4];
            bArr[i4] = b5;
        }
        return bArr;
    }

    private static zzhjy zzc(zzhke zzhkeVar) {
        BigInteger add = zzhkeVar.zzc().add(zzhkeVar.zza());
        BigInteger bigInteger = zzf;
        return new zzhjy(zzhkk.zzg(zzb(add.mod(bigInteger))), zzhkk.zzg(zzb(zzhkeVar.zzc().subtract(zzhkeVar.zza()).mod(bigInteger))), zzhkk.zzg(zzb(zzh.multiply(zzhkeVar.zza()).multiply(zzhkeVar.zzc()).mod(bigInteger))));
    }
}
