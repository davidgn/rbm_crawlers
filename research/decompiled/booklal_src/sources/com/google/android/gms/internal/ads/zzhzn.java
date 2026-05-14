package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
/* loaded from: classes.dex */
public final class zzhzn implements zzhpe {
    private final ThreadLocal zza;
    private final String zzb;
    private final Key zzc;
    private final int zzd;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzhzn(String str, Key key) {
        char c5;
        int i;
        zzhzm zzhzmVar = new zzhzm(this);
        this.zza = zzhzmVar;
        if (!zzhjs.zza(2)) {
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
        if (c5 == 0) {
            i = 20;
        } else if (c5 == 1) {
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
        zzhzmVar.get();
    }

    @Override // com.google.android.gms.internal.ads.zzhpe
    public final byte[] zza(byte[] bArr, int i) {
        if (i <= this.zzd) {
            ThreadLocal threadLocal = this.zza;
            ((Mac) threadLocal.get()).update(bArr);
            return Arrays.copyOf(((Mac) threadLocal.get()).doFinal(), i);
        }
        throw new InvalidAlgorithmParameterException("tag size too big");
    }

    public final /* synthetic */ String zzb() {
        return this.zzb;
    }

    public final /* synthetic */ Key zzc() {
        return this.zzc;
    }
}
