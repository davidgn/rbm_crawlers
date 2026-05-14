package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzagu {
    private final byte[] zza;
    private final int zzb;
    private int zzc;
    private int zzd;

    public zzagu(byte[] bArr) {
        this.zza = bArr;
        this.zzb = bArr.length;
    }

    public final boolean zza() {
        zzc(1);
        return 1 == (((this.zza[this.zzc] & 255) >> this.zzd) & 1);
    }

    public final int zzb(int i) {
        int i4 = this.zzc;
        int i5 = i4 + 1;
        byte[] bArr = this.zza;
        int min = Math.min(i, 8 - this.zzd);
        int i6 = ((bArr[i4] & 255) >> this.zzd) & (255 >> (8 - min));
        while (min < i) {
            i6 |= (bArr[i5] & 255) << min;
            min += 8;
            i5++;
        }
        int i7 = i6 & ((-1) >>> (32 - i));
        zzc(i);
        return i7;
    }

    public final void zzc(int i) {
        int i4;
        int i5 = i / 8;
        int i6 = this.zzc + i5;
        this.zzc = i6;
        int i7 = (i - (i5 * 8)) + this.zzd;
        this.zzd = i7;
        if (i7 > 7) {
            i6++;
            this.zzc = i6;
            i7 -= 8;
            this.zzd = i7;
        }
        boolean z4 = false;
        if (i6 >= 0 && (i6 < (i4 = this.zzb) || (i6 == i4 && i7 == 0))) {
            z4 = true;
        }
        zzgsj.zzi(z4);
    }

    public final int zzd() {
        return (this.zzc * 8) + this.zzd;
    }
}
