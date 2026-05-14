package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzapu {
    public byte[] zza;
    public int zzb;
    private final int zzc;
    private boolean zzd;
    private boolean zze;

    public zzapu(int i, int i4) {
        this.zzc = i;
        byte[] bArr = new byte[131];
        this.zza = bArr;
        bArr[2] = 1;
    }

    public final void zza() {
        this.zzd = false;
        this.zze = false;
    }

    public final boolean zzb() {
        return this.zze;
    }

    public final void zzc(int i) {
        zzgsj.zzi(!this.zzd);
        boolean z4 = i == this.zzc;
        this.zzd = z4;
        if (z4) {
            this.zzb = 3;
            this.zze = false;
        }
    }

    public final void zzd(byte[] bArr, int i, int i4) {
        if (this.zzd) {
            int i5 = i4 - i;
            byte[] bArr2 = this.zza;
            int length = bArr2.length;
            int i6 = this.zzb + i5;
            if (length < i6) {
                this.zza = Arrays.copyOf(bArr2, i6 + i6);
            }
            System.arraycopy(bArr, i, this.zza, this.zzb, i5);
            this.zzb += i5;
        }
    }

    public final boolean zze(int i) {
        if (this.zzd) {
            this.zzb -= i;
            this.zzd = false;
            this.zze = true;
            return true;
        }
        return false;
    }
}
