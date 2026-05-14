package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public final class zzhtq {
    private zzhtt zza = null;
    private zzhtr zzb = null;
    private zzhts zzc = null;
    private zzhtu zzd = zzhtu.zzd;

    private zzhtq() {
    }

    public final zzhtq zza(zzhtt zzhttVar) {
        this.zza = zzhttVar;
        return this;
    }

    public final zzhtq zzb(zzhtr zzhtrVar) {
        this.zzb = zzhtrVar;
        return this;
    }

    public final zzhtq zzc(zzhts zzhtsVar) {
        this.zzc = zzhtsVar;
        return this;
    }

    public final zzhtq zzd(zzhtu zzhtuVar) {
        this.zzd = zzhtuVar;
        return this;
    }

    public final zzhtv zze() {
        zzhtt zzhttVar = this.zza;
        if (zzhttVar != null) {
            zzhtr zzhtrVar = this.zzb;
            if (zzhtrVar != null) {
                zzhts zzhtsVar = this.zzc;
                if (zzhtsVar != null) {
                    zzhtu zzhtuVar = this.zzd;
                    if (zzhtuVar != null) {
                        if (zzhtrVar != zzhtr.zza || zzhtsVar == zzhts.zza) {
                            if (zzhtrVar != zzhtr.zzb || zzhtsVar == zzhts.zzb || zzhtsVar == zzhts.zzc) {
                                if (zzhtrVar != zzhtr.zzc || zzhtsVar == zzhts.zzc) {
                                    return new zzhtv(zzhttVar, zzhtrVar, zzhtsVar, zzhtuVar, null);
                                }
                                throw new GeneralSecurityException("NIST_P521 requires SHA512");
                            }
                            throw new GeneralSecurityException("NIST_P384 requires SHA384 or SHA512");
                        }
                        throw new GeneralSecurityException("NIST_P256 requires SHA256");
                    }
                    throw new GeneralSecurityException("variant is not set");
                }
                throw new GeneralSecurityException("hash type is not set");
            }
            throw new GeneralSecurityException("EC curve type is not set");
        }
        throw new GeneralSecurityException("signature encoding is not set");
    }

    public /* synthetic */ zzhtq(byte[] bArr) {
    }
}
