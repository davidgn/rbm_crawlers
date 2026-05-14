package com.google.android.gms.internal.ads;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.util.Arrays;
/* loaded from: classes.dex */
final class zzapg {
    private static final byte[] zzd = {0, 0, 1};
    public int zza;
    public int zzb;
    public byte[] zzc = new byte[UserVerificationMethods.USER_VERIFY_PATTERN];
    private boolean zze;
    private int zzf;

    public zzapg(int i) {
    }

    public final void zza() {
        this.zze = false;
        this.zza = 0;
        this.zzf = 0;
    }

    public final boolean zzb(int i, int i4) {
        int i5 = this.zzf;
        if (i5 != 0) {
            if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 != 3) {
                        if (i == 179 || i == 181) {
                            this.zza -= i4;
                            this.zze = false;
                            return true;
                        }
                    } else if ((i & 240) != 32) {
                        zzef.zzc("H263Reader", "Unexpected start code value");
                        zza();
                    } else {
                        this.zzb = this.zza;
                        this.zzf = 4;
                    }
                } else if (i > 31) {
                    zzef.zzc("H263Reader", "Unexpected start code value");
                    zza();
                } else {
                    this.zzf = 3;
                }
            } else if (i != 181) {
                zzef.zzc("H263Reader", "Unexpected start code value");
                zza();
            } else {
                this.zzf = 2;
            }
        } else if (i == 176) {
            this.zzf = 1;
            this.zze = true;
        }
        zzc(zzd, 0, 3);
        return false;
    }

    public final void zzc(byte[] bArr, int i, int i4) {
        if (this.zze) {
            int i5 = i4 - i;
            byte[] bArr2 = this.zzc;
            int length = bArr2.length;
            int i6 = this.zza + i5;
            if (length < i6) {
                this.zzc = Arrays.copyOf(bArr2, i6 + i6);
            }
            System.arraycopy(bArr, i, this.zzc, this.zza, i5);
            this.zza += i5;
        }
    }
}
