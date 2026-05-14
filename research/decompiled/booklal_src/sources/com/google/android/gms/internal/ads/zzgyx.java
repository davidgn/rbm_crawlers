package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzgyx {
    public static long zza(double d2) {
        zzgsj.zzb(zzb(d2), "not a normal value");
        int exponent = Math.getExponent(d2);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d2) & 4503599627370495L;
        return exponent == -1023 ? doubleToRawLongBits + doubleToRawLongBits : doubleToRawLongBits | 4503599627370496L;
    }

    public static boolean zzb(double d2) {
        return Math.getExponent(d2) <= 1023;
    }
}
