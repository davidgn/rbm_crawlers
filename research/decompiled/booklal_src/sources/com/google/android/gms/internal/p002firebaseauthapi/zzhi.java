package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzhi  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzhi implements zzbd {
    private static final ThreadLocal zza = new zzhh();
    private static final boolean zzb;
    private final SecretKey zzc;

    static {
        boolean z4;
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            z4 = true;
        } catch (ClassNotFoundException unused) {
            z4 = false;
        }
        zzb = z4;
    }

    public zzhi(byte[] bArr) {
        zzvu.zzb(bArr.length);
        this.zzc = new SecretKeySpec(bArr, "AES");
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbd
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        AlgorithmParameterSpec ivParameterSpec;
        int length = bArr.length;
        if (length >= 28) {
            if (zzb) {
                ivParameterSpec = new GCMParameterSpec(UserVerificationMethods.USER_VERIFY_PATTERN, bArr, 0, 12);
            } else if (!zzvt.zza()) {
                throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
            } else {
                ivParameterSpec = new IvParameterSpec(bArr, 0, 12);
            }
            ThreadLocal threadLocal = zza;
            ((Cipher) threadLocal.get()).init(2, this.zzc, ivParameterSpec);
            return ((Cipher) threadLocal.get()).doFinal(bArr, 12, length - 12);
        }
        throw new GeneralSecurityException("ciphertext too short");
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbd
    public final byte[] zzb(byte[] bArr, byte[] bArr2) {
        throw null;
    }
}
