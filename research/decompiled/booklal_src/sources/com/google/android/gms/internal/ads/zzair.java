package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzair extends zzaiy {
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;
    public final String[] zzd;
    private final zzaiy[] zze;

    public zzair(String str, boolean z4, boolean z5, String[] strArr, zzaiy[] zzaiyVarArr) {
        super("CTOC");
        this.zza = str;
        this.zzb = z4;
        this.zzc = z5;
        this.zzd = strArr;
        this.zze = zzaiyVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzair.class == obj.getClass()) {
            zzair zzairVar = (zzair) obj;
            if (this.zzb == zzairVar.zzb && this.zzc == zzairVar.zzc && Objects.equals(this.zza, zzairVar.zza) && Arrays.equals(this.zzd, zzairVar.zzd) && Arrays.equals(this.zze, zzairVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + (((((this.zzb ? 1 : 0) + 527) * 31) + (this.zzc ? 1 : 0)) * 31);
    }
}
