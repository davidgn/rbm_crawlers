package com.google.android.gms.internal.ads;

import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes.dex */
public final class zziaw {
    public static BigDecimal zza(String str) {
        zzc(str);
        BigDecimal bigDecimal = new BigDecimal(str);
        if (Math.abs(bigDecimal.scale()) < 10000) {
            return bigDecimal;
        }
        throw new NumberFormatException("Number has unsupported scale: ".concat(String.valueOf(str)));
    }

    public static BigInteger zzb(String str) {
        zzc(str);
        return new BigInteger(str);
    }

    private static void zzc(String str) {
        if (str.length() <= 10000) {
            return;
        }
        String substring = str.substring(0, 30);
        throw new NumberFormatException(C.a.q(new StringBuilder(String.valueOf(substring).length() + 28), "Number string too large: ", substring, "..."));
    }
}
