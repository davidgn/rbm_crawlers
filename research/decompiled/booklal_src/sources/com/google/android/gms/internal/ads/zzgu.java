package com.google.android.gms.internal.ads;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
/* loaded from: classes.dex */
public final class zzgu {
    private byte[] zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    public zzgu(byte[] bArr, int i, int i4) {
        this.zza = bArr;
        this.zzc = i;
        this.zzb = i4;
        zzk();
    }

    private final int zzi() {
        int i = 0;
        while (!zze()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? zzf(i) : 0);
    }

    private final boolean zzj(int i) {
        if (i < 2 || i >= this.zzb) {
            return false;
        }
        byte[] bArr = this.zza;
        return bArr[i] == 3 && bArr[i + (-2)] == 0 && bArr[i + (-1)] == 0;
    }

    private final void zzk() {
        int i;
        int i4 = this.zzc;
        boolean z4 = false;
        if (i4 >= 0 && (i4 < (i = this.zzb) || (i4 == i && this.zzd == 0))) {
            z4 = true;
        }
        zzgsj.zzi(z4);
    }

    public final void zza() {
        int i = this.zzd + 1;
        this.zzd = i;
        if (i == 8) {
            this.zzd = 0;
            int i4 = this.zzc;
            this.zzc = i4 + (true == zzj(i4 + 1) ? 2 : 1);
        }
        zzk();
    }

    public final void zzb(int i) {
        int i4 = this.zzc;
        int i5 = i / 8;
        int i6 = i4 + i5;
        this.zzc = i6;
        int i7 = (i - (i5 * 8)) + this.zzd;
        this.zzd = i7;
        if (i7 > 7) {
            this.zzc = i6 + 1;
            this.zzd = i7 - 8;
        }
        while (true) {
            i4++;
            if (i4 > this.zzc) {
                zzk();
                return;
            } else if (zzj(i4)) {
                this.zzc++;
                i4 += 2;
            }
        }
    }

    public final void zzc() {
        int i = this.zzd;
        if (i > 0) {
            zzb(8 - i);
        }
    }

    public final boolean zzd(int i) {
        int i4 = this.zzc;
        int i5 = i / 8;
        int i6 = i4 + i5;
        int i7 = (this.zzd + i) - (i5 * 8);
        if (i7 > 7) {
            i6++;
            i7 -= 8;
        }
        while (true) {
            i4++;
            if (i4 > i6 || i6 >= this.zzb) {
                break;
            } else if (zzj(i4)) {
                i6++;
                i4 += 2;
            }
        }
        int i8 = this.zzb;
        if (i6 >= i8) {
            return i6 == i8 && i7 == 0;
        }
        return true;
    }

    public final boolean zze() {
        int i = this.zza[this.zzc] & (UserVerificationMethods.USER_VERIFY_PATTERN >> this.zzd);
        zza();
        return i != 0;
    }

    public final int zzf(int i) {
        int i4;
        this.zzd += i;
        int i5 = 0;
        while (true) {
            i4 = this.zzd;
            if (i4 <= 8) {
                break;
            }
            int i6 = i4 - 8;
            this.zzd = i6;
            byte[] bArr = this.zza;
            int i7 = this.zzc;
            i5 |= (bArr[i7] & 255) << i6;
            if (true != zzj(i7 + 1)) {
                r3 = 1;
            }
            this.zzc = i7 + r3;
        }
        byte[] bArr2 = this.zza;
        int i8 = this.zzc;
        int i9 = i5 | ((bArr2[i8] & 255) >> (8 - i4));
        int i10 = 32 - i;
        if (i4 == 8) {
            this.zzd = 0;
            this.zzc = i8 + (true != zzj(i8 + 1) ? 1 : 2);
        }
        int i11 = ((-1) >>> i10) & i9;
        zzk();
        return i11;
    }

    public final int zzg() {
        return zzi();
    }

    public final int zzh() {
        int zzi = zzi();
        int i = zzi % 2;
        return ((zzi + 1) / 2) * (i == 0 ? -1 : 1);
    }
}
