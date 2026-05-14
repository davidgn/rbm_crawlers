package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* loaded from: classes.dex */
public final class zzhfi {
    private Integer zza = null;
    private zzhfj zzb = zzhfj.zzc;

    private zzhfi() {
    }

    public final zzhfi zza(int i) {
        if (i == 16 || i == 32) {
            this.zza = Integer.valueOf(i);
            return this;
        }
        throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
    }

    public final zzhfi zzb(zzhfj zzhfjVar) {
        this.zzb = zzhfjVar;
        return this;
    }

    public final zzhfk zzc() {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzb != null) {
                return new zzhfk(num.intValue(), this.zzb, null);
            }
            throw new GeneralSecurityException("Variant is not set");
        }
        throw new GeneralSecurityException("Key size is not set");
    }

    public /* synthetic */ zzhfi(byte[] bArr) {
    }
}
