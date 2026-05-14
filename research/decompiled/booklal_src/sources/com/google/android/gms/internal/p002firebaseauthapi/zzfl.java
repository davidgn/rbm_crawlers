package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzfl  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzfl {
    private Integer zza;
    private zzfm zzb;

    public /* synthetic */ zzfl(zzfk zzfkVar) {
        this.zza = null;
        this.zzb = zzfm.zzc;
    }

    public final zzfl zza(int i) {
        if (i == 16 || i == 32) {
            this.zza = Integer.valueOf(i);
            return this;
        }
        throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
    }

    public final zzfl zzb(zzfm zzfmVar) {
        this.zzb = zzfmVar;
        return this;
    }

    public final zzfo zzc() {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzb != null) {
                return new zzfo(num.intValue(), this.zzb, null);
            }
            throw new GeneralSecurityException("Variant is not set");
        }
        throw new GeneralSecurityException("Key size is not set");
    }

    private zzfl() {
        this.zza = null;
        throw null;
    }
}
