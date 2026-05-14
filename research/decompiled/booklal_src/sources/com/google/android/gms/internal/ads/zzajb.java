package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzajb extends zzaiy {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int[] zzd;
    public final int[] zze;

    public zzajb(int i, int i4, int i5, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.zza = i;
        this.zzb = i4;
        this.zzc = i5;
        this.zzd = iArr;
        this.zze = iArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzajb.class == obj.getClass()) {
            zzajb zzajbVar = (zzajb) obj;
            if (this.zza == zzajbVar.zza && this.zzb == zzajbVar.zzb && this.zzc == zzajbVar.zzc && Arrays.equals(this.zzd, zzajbVar.zzd) && Arrays.equals(this.zze, zzajbVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Arrays.hashCode(this.zzd) + ((((((this.zza + 527) * 31) + this.zzb) * 31) + this.zzc) * 31);
        return Arrays.hashCode(this.zze) + (hashCode * 31);
    }
}
