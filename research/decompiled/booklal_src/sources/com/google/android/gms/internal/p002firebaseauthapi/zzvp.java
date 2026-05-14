package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvp  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzvp implements zzoh {
    private final ThreadLocal zza;
    private final String zzb;
    private final Key zzc;
    private final int zzd;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzvp(String str, Key key) {
        char c5;
        int i;
        zzvo zzvoVar = new zzvo(this);
        this.zza = zzvoVar;
        if (!zzhj.zza(2)) {
            throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        this.zzb = str;
        this.zzc = key;
        if (key.getEncoded().length < 16) {
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        switch (str.hashCode()) {
            case -1823053428:
                if (str.equals("HMACSHA1")) {
                    c5 = 0;
                    break;
                }
                c5 = 65535;
                break;
            case 392315023:
                if (str.equals("HMACSHA224")) {
                    c5 = 1;
                    break;
                }
                c5 = 65535;
                break;
            case 392315118:
                if (str.equals("HMACSHA256")) {
                    c5 = 2;
                    break;
                }
                c5 = 65535;
                break;
            case 392316170:
                if (str.equals("HMACSHA384")) {
                    c5 = 3;
                    break;
                }
                c5 = 65535;
                break;
            case 392317873:
                if (str.equals("HMACSHA512")) {
                    c5 = 4;
                    break;
                }
                c5 = 65535;
                break;
            default:
                c5 = 65535;
                break;
        }
        if (c5 != 0) {
            if (c5 == 1) {
                i = 28;
            } else if (c5 == 2) {
                i = 32;
            } else if (c5 == 3) {
                i = 48;
            } else if (c5 != 4) {
                throw new NoSuchAlgorithmException("unknown Hmac algorithm: ".concat(str));
            } else {
                i = 64;
            }
            this.zzd = i;
        } else {
            this.zzd = 20;
        }
        zzvoVar.get();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzoh
    public final byte[] zza(byte[] bArr, int i) {
        if (i <= this.zzd) {
            ((Mac) this.zza.get()).update(bArr);
            return Arrays.copyOf(((Mac) this.zza.get()).doFinal(), i);
        }
        throw new InvalidAlgorithmParameterException("tag size too big");
    }
}
