package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzdn {
    private int zzb;
    private int zzc;
    private int zzd = 7;
    private int[] zza = new int[8];

    public final void zza(int i) {
        int[] iArr = this.zza;
        int i4 = this.zzc;
        iArr[i4] = i;
        int i5 = this.zzd & (i4 + 1);
        this.zzc = i5;
        int i6 = this.zzb;
        if (i5 == i6) {
            int length = iArr.length;
            int i7 = length - i6;
            int i8 = length + length;
            int[] iArr2 = new int[i8];
            System.arraycopy(iArr, i6, iArr2, 0, i7);
            System.arraycopy(this.zza, 0, iArr2, i7, this.zzb);
            this.zza = iArr2;
            this.zzb = 0;
            this.zzc = length;
            this.zzd = i8 - 1;
        }
    }

    public final int zzb() {
        int i = this.zzb;
        if (i != this.zzc) {
            int i4 = this.zza[i];
            this.zzb = (i + 1) & this.zzd;
            return i4;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final void zzc() {
        this.zzc = this.zzb;
    }

    public final boolean zzd() {
        return this.zzb == this.zzc;
    }
}
