package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public final class zzhzv {
    public static String zza(zzhzh zzhzhVar) {
        zzhzw.zzb(zzhzhVar);
        return zzhzhVar.toString().concat("withECDSA");
    }

    public static String zzb(zzhzh zzhzhVar) {
        int ordinal = zzhzhVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal == 4) {
                            return "SHA-512";
                        }
                        throw new GeneralSecurityException("Unsupported hash ".concat(zzhzhVar.toString()));
                    }
                    return "SHA-384";
                }
                return "SHA-256";
            }
            return "SHA-224";
        }
        return "SHA-1";
    }
}
