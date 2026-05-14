package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes.dex */
public final class zzcl {
    public static final zzcl zza = new zzcl(-1, -1, -1);
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;

    public zzcl(int i, int i4, int i5) {
        this.zzb = i;
        this.zzc = i4;
        this.zzd = i5;
        this.zze = zzfk.zzA(i5) ? zzfk.zzD(i5) * i4 : -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcl) {
            zzcl zzclVar = (zzcl) obj;
            return this.zzb == zzclVar.zzb && this.zzc == zzclVar.zzc && this.zzd == zzclVar.zzd;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd));
    }

    public final String toString() {
        int i = this.zzb;
        int length = String.valueOf(i).length();
        int i4 = this.zzc;
        int length2 = String.valueOf(i4).length();
        int i5 = this.zzd;
        StringBuilder sb = new StringBuilder(length + 38 + length2 + 11 + String.valueOf(i5).length() + 1);
        C.a.u(sb, "AudioFormat[sampleRate=", i, ", channelCount=", i4);
        return com.google.android.gms.ads.internal.util.client.a.g(sb, ", encoding=", i5, "]");
    }
}
