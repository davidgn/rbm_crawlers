package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzgzb {
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0049, code lost:
        if (r8 > 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004c, code lost:
        if (r8 < 0) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long zza(long r8, long r10, java.math.RoundingMode r12) {
        /*
            r12.getClass()
            long r0 = r8 / r10
            long r2 = r10 * r0
            long r2 = r8 - r2
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 != 0) goto L10
            goto L55
        L10:
            long r8 = r8 ^ r10
            int[] r6 = com.google.android.gms.internal.ads.zzgza.zza
            int r7 = r12.ordinal()
            r6 = r6[r7]
            r7 = 63
            long r8 = r8 >> r7
            int r8 = (int) r8
            r8 = r8 | 1
            switch(r6) {
                case 1: goto L51;
                case 2: goto L55;
                case 3: goto L4c;
                case 4: goto L4e;
                case 5: goto L49;
                case 6: goto L28;
                case 7: goto L28;
                case 8: goto L28;
                default: goto L22;
            }
        L22:
            java.lang.AssertionError r8 = new java.lang.AssertionError
            r8.<init>()
            throw r8
        L28:
            long r2 = java.lang.Math.abs(r2)
            long r9 = java.lang.Math.abs(r10)
            long r9 = r9 - r2
            long r2 = r2 - r9
            int r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r9 != 0) goto L46
            java.math.RoundingMode r9 = java.math.RoundingMode.HALF_UP
            if (r12 == r9) goto L4e
            java.math.RoundingMode r9 = java.math.RoundingMode.HALF_EVEN
            if (r12 != r9) goto L55
            r9 = 1
            long r9 = r9 & r0
            int r9 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r9 == 0) goto L55
            goto L4e
        L46:
            if (r9 <= 0) goto L55
            goto L4e
        L49:
            if (r8 <= 0) goto L55
            goto L4e
        L4c:
            if (r8 >= 0) goto L55
        L4e:
            long r8 = (long) r8
            long r0 = r0 + r8
            return r0
        L51:
            r8 = 0
            com.google.android.gms.internal.ads.zzgzc.zzb(r8)
        L55:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzb.zza(long, long, java.math.RoundingMode):long");
    }

    public static long zzb(long j5, long j6) {
        zzgzc.zza("a", j5);
        zzgzc.zza("b", j6);
        if (j5 == 0) {
            return j6;
        }
        if (j6 == 0) {
            return j5;
        }
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j5);
        long j7 = j5 >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j6);
        long j8 = j6 >> numberOfTrailingZeros2;
        while (j7 != j8) {
            long j9 = j7 - j8;
            long j10 = (j9 >> 63) & j9;
            long j11 = (j9 - j10) - j10;
            j7 = j11 >> Long.numberOfTrailingZeros(j11);
            j8 += j10;
        }
        return j7 << Math.min(numberOfTrailingZeros, numberOfTrailingZeros2);
    }

    public static long zzc(long j5, long j6) {
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j6) + Long.numberOfLeadingZeros(j6) + Long.numberOfLeadingZeros(~j5) + Long.numberOfLeadingZeros(j5);
        if (numberOfLeadingZeros > 65) {
            return j5 * j6;
        }
        int i = (j5 > 0L ? 1 : (j5 == 0L ? 0 : -1));
        long j7 = ((j5 ^ j6) >>> 63) + Long.MAX_VALUE;
        if ((numberOfLeadingZeros < 64) || ((j6 == Long.MIN_VALUE) & (i < 0))) {
            return j7;
        }
        long j8 = j5 * j6;
        return (i == 0 || j8 / j5 == j6) ? j8 : j7;
    }
}
