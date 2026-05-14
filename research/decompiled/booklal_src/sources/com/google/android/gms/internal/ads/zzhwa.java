package com.google.android.gms.internal.ads;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* loaded from: classes.dex */
public final class zzhwa {
    private static final BigInteger zzg;
    private static final BigInteger zzh;
    private Integer zza = null;
    private BigInteger zzb = zzhwd.zza;
    private zzhwb zzc = null;
    private zzhwb zzd = null;
    private Integer zze = null;
    private zzhwc zzf = zzhwc.zzd;

    static {
        BigInteger valueOf = BigInteger.valueOf(2L);
        zzg = valueOf;
        zzh = valueOf.pow(UserVerificationMethods.USER_VERIFY_HANDPRINT);
    }

    private zzhwa() {
    }

    public final zzhwa zza(int i) {
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzhwa zzb(BigInteger bigInteger) {
        this.zzb = bigInteger;
        return this;
    }

    public final zzhwa zzc(zzhwc zzhwcVar) {
        this.zzf = zzhwcVar;
        return this;
    }

    public final zzhwa zzd(zzhwb zzhwbVar) {
        this.zzc = zzhwbVar;
        return this;
    }

    public final zzhwa zze(zzhwb zzhwbVar) {
        this.zzd = zzhwbVar;
        return this;
    }

    public final zzhwa zzf(int i) {
        if (i >= 0) {
            this.zze = Integer.valueOf(i);
            return this;
        }
        throw new GeneralSecurityException(String.format("Invalid salt length in bytes %d; salt length must be positive", Integer.valueOf(i)));
    }

    public final zzhwd zzg() {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzb != null) {
                if (this.zzc != null) {
                    if (this.zzd != null) {
                        if (this.zzf != null) {
                            if (this.zze != null) {
                                if (num.intValue() >= 2048) {
                                    if (this.zzc == this.zzd) {
                                        BigInteger bigInteger = this.zzb;
                                        int compareTo = bigInteger.compareTo(zzhwd.zza);
                                        if (compareTo != 0) {
                                            if (compareTo < 0) {
                                                throw new InvalidAlgorithmParameterException("Public exponent must be at least 65537.");
                                            }
                                            if (bigInteger.mod(zzg).equals(BigInteger.ZERO)) {
                                                throw new InvalidAlgorithmParameterException("Invalid public exponent");
                                            }
                                            if (bigInteger.compareTo(zzh) > 0) {
                                                throw new InvalidAlgorithmParameterException("Public exponent cannot be larger than 2^256.");
                                            }
                                        }
                                        return new zzhwd(this.zza.intValue(), this.zzb, this.zzf, this.zzc, this.zzd, this.zze.intValue(), null);
                                    }
                                    throw new GeneralSecurityException("MGF1 hash is different from signature hash");
                                }
                                throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least %d bits", this.zza, 2048));
                            }
                            throw new GeneralSecurityException("salt length is not set");
                        }
                        throw new GeneralSecurityException("variant is not set");
                    }
                    throw new GeneralSecurityException("mgf1 hash type is not set");
                }
                throw new GeneralSecurityException("signature hash type is not set");
            }
            throw new GeneralSecurityException("publicExponent is not set");
        }
        throw new GeneralSecurityException("key size is not set");
    }

    public /* synthetic */ zzhwa(byte[] bArr) {
    }
}
