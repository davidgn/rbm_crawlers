package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzaju {
    private static final long[] zza = {128, 64, 32, 16, 8, 4, 2, 1};
    private final byte[] zzb = new byte[8];
    private int zzc;
    private int zzd;

    public static int zzd(int i) {
        int i4 = 0;
        while (i4 < 8) {
            int i5 = i4 + 1;
            if ((zza[i4] & i) != 0) {
                return i5;
            }
            i4 = i5;
        }
        return -1;
    }

    public static long zze(byte[] bArr, int i, boolean z4) {
        long j5 = bArr[0] & 255;
        if (z4) {
            j5 &= ~zza[i - 1];
        }
        for (int i4 = 1; i4 < i; i4++) {
            j5 = (j5 << 8) | (bArr[i4] & 255);
        }
        return j5;
    }

    public final void zza() {
        this.zzc = 0;
        this.zzd = 0;
    }

    public final long zzb(zzafg zzafgVar, boolean z4, boolean z5, int i) {
        if (this.zzc == 0) {
            byte[] bArr = this.zzb;
            if (!zzafgVar.zzb(bArr, 0, 1, z4)) {
                return -1L;
            }
            int zzd = zzd(bArr[0] & 255);
            this.zzd = zzd;
            if (zzd == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.zzc = 1;
        }
        int i4 = this.zzd;
        if (i4 > i) {
            this.zzc = 0;
            return -2L;
        }
        if (i4 != 1) {
            zzafgVar.zzc(this.zzb, 1, i4 - 1);
        }
        this.zzc = 0;
        return zze(this.zzb, this.zzd, z5);
    }

    public final int zzc() {
        return this.zzd;
    }
}
