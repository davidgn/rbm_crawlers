package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzagr {
    public final int zza;
    public final byte[] zzb;
    public final int zzc;
    public final int zzd;

    public zzagr(int i, byte[] bArr, int i4, int i5) {
        this.zza = i;
        this.zzb = bArr;
        this.zzc = i4;
        this.zzd = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagr.class == obj.getClass()) {
            zzagr zzagrVar = (zzagr) obj;
            if (this.zza == zzagrVar.zza && this.zzc == zzagrVar.zzc && this.zzd == zzagrVar.zzd && Arrays.equals(this.zzb, zzagrVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zza;
        return ((((Arrays.hashCode(this.zzb) + (i * 31)) * 31) + this.zzc) * 31) + this.zzd;
    }
}
