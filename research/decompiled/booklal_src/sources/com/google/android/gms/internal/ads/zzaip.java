package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzaip extends zzaiy {
    public final byte[] zza;

    public zzaip(String str, byte[] bArr) {
        super(str);
        this.zza = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaip.class == obj.getClass()) {
            zzaip zzaipVar = (zzaip) obj;
            if (this.zzf.equals(zzaipVar.zzf) && Arrays.equals(this.zza, zzaipVar.zza)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza) + ((this.zzf.hashCode() + 527) * 31);
    }
}
