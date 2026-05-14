package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* loaded from: classes.dex */
public final class zzhnw {
    private Integer zza = null;
    private Integer zzb = null;
    private zzhnx zzc = null;
    private zzhny zzd = zzhny.zzd;

    private zzhnw() {
    }

    public final zzhnw zza(int i) {
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzhnw zzb(int i) {
        this.zzb = Integer.valueOf(i);
        return this;
    }

    public final zzhnw zzc(zzhny zzhnyVar) {
        this.zzd = zzhnyVar;
        return this;
    }

    public final zzhnw zzd(zzhnx zzhnxVar) {
        this.zzc = zzhnxVar;
        return this;
    }

    public final zzhnz zze() {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzb != null) {
                if (this.zzc != null) {
                    if (this.zzd != null) {
                        if (num.intValue() >= 16) {
                            Integer num2 = this.zzb;
                            int intValue = num2.intValue();
                            zzhnx zzhnxVar = this.zzc;
                            if (intValue >= 10) {
                                if (zzhnxVar == zzhnx.zza) {
                                    if (intValue > 20) {
                                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num2));
                                    }
                                } else if (zzhnxVar == zzhnx.zzb) {
                                    if (intValue > 28) {
                                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num2));
                                    }
                                } else if (zzhnxVar == zzhnx.zzc) {
                                    if (intValue > 32) {
                                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num2));
                                    }
                                } else if (zzhnxVar == zzhnx.zzd) {
                                    if (intValue > 48) {
                                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num2));
                                    }
                                } else if (zzhnxVar != zzhnx.zze) {
                                    throw new GeneralSecurityException("unknown hash type; must be SHA256, SHA384 or SHA512");
                                } else {
                                    if (intValue > 64) {
                                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num2));
                                    }
                                }
                                return new zzhnz(this.zza.intValue(), this.zzb.intValue(), this.zzd, this.zzc, null);
                            }
                            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", num2));
                        }
                        throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 16 bytes", this.zza));
                    }
                    throw new GeneralSecurityException("variant is not set");
                }
                throw new GeneralSecurityException("hash type is not set");
            }
            throw new GeneralSecurityException("tag size is not set");
        }
        throw new GeneralSecurityException("key size is not set");
    }

    public /* synthetic */ zzhnw(byte[] bArr) {
    }
}
