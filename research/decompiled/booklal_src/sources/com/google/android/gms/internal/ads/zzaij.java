package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzaij implements zzao {
    public final String zza;
    public final String zzb;
    public final long zzc;
    public final long zzd;
    public final byte[] zze;
    private int zzf;

    static {
        zzt zztVar = new zzt();
        zztVar.zzn("application/id3");
        zztVar.zzN();
        zzt zztVar2 = new zzt();
        zztVar2.zzn("application/x-scte35");
        zztVar2.zzN();
    }

    public zzaij(String str, String str2, long j5, long j6, byte[] bArr) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j5;
        this.zzd = j6;
        this.zze = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaij.class == obj.getClass()) {
            zzaij zzaijVar = (zzaij) obj;
            if (this.zzc == zzaijVar.zzc && this.zzd == zzaijVar.zzd && Objects.equals(this.zza, zzaijVar.zza) && Objects.equals(this.zzb, zzaijVar.zzb) && Arrays.equals(this.zze, zzaijVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzf;
        if (i == 0) {
            int hashCode = this.zzb.hashCode() + ((this.zza.hashCode() + 527) * 31);
            long j5 = this.zzc;
            long j6 = this.zzd;
            int hashCode2 = Arrays.hashCode(this.zze) + (((((hashCode * 31) + ((int) (j5 ^ (j5 >>> 32)))) * 31) + ((int) j6)) * 31);
            this.zzf = hashCode2;
            return hashCode2;
        }
        return i;
    }

    public final String toString() {
        long j5 = this.zzd;
        int length = String.valueOf(j5).length();
        long j6 = this.zzc;
        int length2 = String.valueOf(j6).length();
        String str = this.zza;
        String str2 = this.zzb;
        StringBuilder sb = new StringBuilder(str2.length() + str.length() + 18 + length + 13 + length2 + 8);
        sb.append("EMSG: scheme=");
        sb.append(str);
        sb.append(", id=");
        sb.append(j5);
        com.google.android.gms.ads.internal.util.client.a.p(sb, ", durationMs=", j6, ", value=");
        sb.append(str2);
        return sb.toString();
    }
}
