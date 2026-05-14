package com.google.android.gms.internal.ads;

import java.math.BigInteger;
/* loaded from: classes.dex */
final class zzhkg {
    static final zzhkg zzd;
    final BigInteger zza;
    final BigInteger zzb;
    final BigInteger zzc;

    static {
        BigInteger bigInteger = BigInteger.ONE;
        zzd = new zzhkg(bigInteger, bigInteger, BigInteger.ZERO);
    }

    public zzhkg(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.zza = bigInteger;
        this.zzb = bigInteger2;
        this.zzc = bigInteger3;
    }

    public final boolean zza() {
        return this.zzc.equals(BigInteger.ZERO);
    }
}
