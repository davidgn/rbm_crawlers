package com.google.android.gms.internal.ads;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* loaded from: classes.dex */
public final class zzhvo {
    private static final BigInteger zze;
    private static final BigInteger zzf;
    private Integer zza = null;
    private BigInteger zzb = zzhvr.zza;
    private zzhvp zzc = null;
    private zzhvq zzd = zzhvq.zzd;

    static {
        BigInteger valueOf = BigInteger.valueOf(2L);
        zze = valueOf;
        zzf = valueOf.pow(UserVerificationMethods.USER_VERIFY_HANDPRINT);
    }

    private zzhvo() {
    }

    public final zzhvo zza(int i) {
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzhvo zzb(BigInteger bigInteger) {
        this.zzb = bigInteger;
        return this;
    }

    public final zzhvo zzc(zzhvq zzhvqVar) {
        this.zzd = zzhvqVar;
        return this;
    }

    public final zzhvo zzd(zzhvp zzhvpVar) {
        this.zzc = zzhvpVar;
        return this;
    }

    public final zzhvr zze() {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzb != null) {
                if (this.zzc != null) {
                    if (this.zzd != null) {
                        if (num.intValue() >= 2048) {
                            BigInteger bigInteger = this.zzb;
                            int compareTo = bigInteger.compareTo(zzhvr.zza);
                            if (compareTo != 0) {
                                if (compareTo < 0) {
                                    throw new InvalidAlgorithmParameterException("Public exponent must be at least 65537.");
                                }
                                if (bigInteger.mod(zze).equals(BigInteger.ZERO)) {
                                    throw new InvalidAlgorithmParameterException("Invalid public exponent");
                                }
                                if (bigInteger.compareTo(zzf) > 0) {
                                    throw new InvalidAlgorithmParameterException("Public exponent cannot be larger than 2^256.");
                                }
                            }
                            return new zzhvr(this.zza.intValue(), this.zzb, this.zzd, this.zzc, null);
                        }
                        throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 2048 bits", this.zza));
                    }
                    throw new GeneralSecurityException("variant is not set");
                }
                throw new GeneralSecurityException("hash type is not set");
            }
            throw new GeneralSecurityException("publicExponent is not set");
        }
        throw new GeneralSecurityException("key size is not set");
    }

    public /* synthetic */ zzhvo(byte[] bArr) {
    }
}
