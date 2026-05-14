package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzaji implements zzao {
    public final float zza;
    public final int zzb;

    public zzaji(float f5, int i) {
        this.zza = f5;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaji.class == obj.getClass()) {
            zzaji zzajiVar = (zzaji) obj;
            if (this.zza == zzajiVar.zza && this.zzb == zzajiVar.zzb) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.hashCode(this.zza) + 527) * 31) + this.zzb;
    }

    public final String toString() {
        float f5 = this.zza;
        int length = String.valueOf(f5).length();
        int i = this.zzb;
        StringBuilder sb = new StringBuilder(length + 47 + String.valueOf(i).length());
        sb.append("smta: captureFrameRate=");
        sb.append(f5);
        sb.append(", svcTemporalLayerCount=");
        sb.append(i);
        return sb.toString();
    }
}
