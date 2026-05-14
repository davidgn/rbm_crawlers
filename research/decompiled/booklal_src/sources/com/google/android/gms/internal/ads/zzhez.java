package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* loaded from: classes.dex */
public final class zzhez {
    private Integer zza = null;
    private Integer zzb = null;
    private Integer zzc = null;
    private zzhfa zzd = zzhfa.zzc;

    private zzhez() {
    }

    public final zzhez zza(int i) {
        if (i == 16 || i == 24 || i == 32) {
            this.zza = Integer.valueOf(i);
            return this;
        }
        throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
    }

    public final zzhez zzb(int i) {
        this.zzb = 12;
        return this;
    }

    public final zzhez zzc(int i) {
        this.zzc = 16;
        return this;
    }

    public final zzhez zzd(zzhfa zzhfaVar) {
        this.zzd = zzhfaVar;
        return this;
    }

    public final zzhfb zze() {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzd != null) {
                if (this.zzb != null) {
                    if (this.zzc != null) {
                        int intValue = num.intValue();
                        this.zzb.getClass();
                        this.zzc.getClass();
                        return new zzhfb(intValue, 12, 16, this.zzd, null);
                    }
                    throw new GeneralSecurityException("Tag size is not set");
                }
                throw new GeneralSecurityException("IV size is not set");
            }
            throw new GeneralSecurityException("Variant is not set");
        }
        throw new GeneralSecurityException("Key size is not set");
    }

    public /* synthetic */ zzhez(byte[] bArr) {
    }
}
