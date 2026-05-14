package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzaiq extends zzaiy {
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final long zzd;
    public final long zze;
    private final zzaiy[] zzg;

    public zzaiq(String str, int i, int i4, long j5, long j6, zzaiy[] zzaiyVarArr) {
        super("CHAP");
        this.zza = str;
        this.zzb = i;
        this.zzc = i4;
        this.zzd = j5;
        this.zze = j6;
        this.zzg = zzaiyVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaiq.class == obj.getClass()) {
            zzaiq zzaiqVar = (zzaiq) obj;
            if (this.zzb == zzaiqVar.zzb && this.zzc == zzaiqVar.zzc && this.zzd == zzaiqVar.zzd && this.zze == zzaiqVar.zze && Objects.equals(this.zza, zzaiqVar.zza) && Arrays.equals(this.zzg, zzaiqVar.zzg)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.zza;
        long j5 = this.zze;
        long j6 = this.zzd;
        return str.hashCode() + ((((((((this.zzb + 527) * 31) + this.zzc) * 31) + ((int) j6)) * 31) + ((int) j5)) * 31);
    }
}
