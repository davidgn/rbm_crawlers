package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;
/* loaded from: classes.dex */
public final class zzcar extends zzcat {
    private final String zza;
    private final int zzb;

    public zzcar(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzcar) {
            zzcar zzcarVar = (zzcar) obj;
            if (Objects.equal(this.zza, zzcarVar.zza)) {
                if (Objects.equal(Integer.valueOf(this.zzb), Integer.valueOf(zzcarVar.zzb))) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcau
    public final String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcau
    public final int zzc() {
        return this.zzb;
    }
}
