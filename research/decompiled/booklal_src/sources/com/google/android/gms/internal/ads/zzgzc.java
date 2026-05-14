package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzgzc {
    public static long zza(String str, long j5) {
        if (j5 >= 0) {
            return j5;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(j5).length() + 17);
        sb.append(str);
        sb.append(" (");
        sb.append(j5);
        sb.append(") must be >= 0");
        throw new IllegalArgumentException(sb.toString());
    }

    public static void zzb(boolean z4) {
        if (!z4) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }
}
