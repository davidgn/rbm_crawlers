package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
/* loaded from: classes.dex */
public final class zzgyw {
    public static final /* synthetic */ int zza = 0;

    static {
        Math.log(2.0d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (java.lang.Math.abs(r8 - r2) == 0.5d) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long zza(double r8, java.math.RoundingMode r10) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgyw.zza(double, java.math.RoundingMode):long");
    }

    public static boolean zzb(double d2) {
        if (d2 > 0.0d && zzgyx.zzb(d2)) {
            long zza2 = zzgyx.zza(d2);
            if ((zza2 & ((-1) + zza2)) == 0) {
                return true;
            }
        }
        return false;
    }

    public static int zzc(double d2, RoundingMode roundingMode) {
        boolean zzb;
        zzgsj.zzb(d2 > 0.0d && zzgyx.zzb(d2), "x must be positive and finite");
        int exponent = Math.getExponent(d2);
        if (Math.getExponent(d2) >= -1022) {
            switch (zzgyv.zza[roundingMode.ordinal()]) {
                case 1:
                    zzgzc.zzb(zzb(d2));
                    return exponent;
                case 2:
                    return exponent;
                case 3:
                    r1 = !zzb(d2);
                    break;
                case 4:
                    r1 = exponent < 0;
                    zzb = zzb(d2);
                    r1 &= !zzb;
                    break;
                case 5:
                    r1 = exponent >= 0;
                    zzb = zzb(d2);
                    r1 &= !zzb;
                    break;
                case 6:
                case 7:
                case 8:
                    double longBitsToDouble = Double.longBitsToDouble((Double.doubleToRawLongBits(d2) & 4503599627370495L) | 4607182418800017408L);
                    if (longBitsToDouble * longBitsToDouble > 2.0d) {
                        r1 = true;
                        break;
                    }
                    break;
                default:
                    throw new AssertionError();
            }
            return r1 ? exponent + 1 : exponent;
        }
        return zzc(d2 * 4.503599627370496E15d, roundingMode) - 52;
    }

    public static boolean zzd(double d2) {
        if (zzgyx.zzb(d2)) {
            return d2 == 0.0d || 52 - Long.numberOfTrailingZeros(zzgyx.zza(d2)) <= Math.getExponent(d2);
        }
        return false;
    }
}
