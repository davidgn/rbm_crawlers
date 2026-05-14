package com.google.android.gms.internal.ads;
@Deprecated
/* loaded from: classes.dex */
public class zzajf implements zzao {
    public final long zza;
    public final long zzb;
    public final long zzc;
    public final long zzd;
    public final long zze;

    public zzajf(long j5, long j6, long j7, long j8, long j9) {
        this.zza = j5;
        this.zzb = j6;
        this.zzc = j7;
        this.zzd = j8;
        this.zze = j9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzajf zzajfVar = (zzajf) obj;
            if (this.zza == zzajfVar.zza && this.zzb == zzajfVar.zzb && this.zzc == zzajfVar.zzc && this.zzd == zzajfVar.zzd && this.zze == zzajfVar.zze) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Long.hashCode(this.zzb);
        int hashCode2 = Long.hashCode(this.zzc) + ((hashCode + ((Long.hashCode(this.zza) + 527) * 31)) * 31);
        int hashCode3 = Long.hashCode(this.zzd);
        return Long.hashCode(this.zze) + ((hashCode3 + (hashCode2 * 31)) * 31);
    }

    public final String toString() {
        long j5 = this.zza;
        int length = String.valueOf(j5).length();
        long j6 = this.zzb;
        int length2 = String.valueOf(j6).length();
        long j7 = this.zzc;
        int length3 = String.valueOf(j7).length();
        long j8 = this.zzd;
        int length4 = String.valueOf(j8).length();
        long j9 = this.zze;
        StringBuilder sb = new StringBuilder(length + 54 + length2 + 31 + length3 + 21 + length4 + 12 + String.valueOf(j9).length());
        com.google.android.gms.ads.internal.util.client.a.p(sb, "Motion photo metadata: photoStartPosition=", j5, ", photoSize=");
        sb.append(j6);
        com.google.android.gms.ads.internal.util.client.a.p(sb, ", photoPresentationTimestampUs=", j7, ", videoStartPosition=");
        sb.append(j8);
        sb.append(", videoSize=");
        sb.append(j9);
        return sb.toString();
    }
}
