package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzfz implements zzao {
    public final float zza;
    public final float zzb;

    public zzfz(float f5, float f6) {
        boolean z4 = false;
        if (f5 >= -90.0f && f5 <= 90.0f && f6 >= -180.0f && f6 <= 180.0f) {
            z4 = true;
        }
        zzgsj.zzb(z4, "Invalid latitude or longitude");
        this.zza = f5;
        this.zzb = f6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzfz.class == obj.getClass()) {
            zzfz zzfzVar = (zzfz) obj;
            if (this.zza == zzfzVar.zza && this.zzb == zzfzVar.zzb) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.zzb) + ((Float.hashCode(this.zza) + 527) * 31);
    }

    public final String toString() {
        float f5 = this.zza;
        int length = String.valueOf(f5).length();
        float f6 = this.zzb;
        StringBuilder sb = new StringBuilder(length + 26 + String.valueOf(f6).length());
        sb.append("xyz: latitude=");
        sb.append(f5);
        sb.append(", longitude=");
        sb.append(f6);
        return sb.toString();
    }
}
