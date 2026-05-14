package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes.dex */
public final class zzhfk extends zzhdw {
    private final int zza;
    private final zzhfj zzb;

    public /* synthetic */ zzhfk(int i, zzhfj zzhfjVar, byte[] bArr) {
        this.zza = i;
        this.zzb = zzhfjVar;
    }

    public static zzhfi zzb() {
        return new zzhfi(null);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzhfk) {
            zzhfk zzhfkVar = (zzhfk) obj;
            return zzhfkVar.zza == this.zza && zzhfkVar.zzb == this.zzb;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(zzhfk.class, Integer.valueOf(this.zza), this.zzb);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzb);
        int length = valueOf.length();
        int i = this.zza;
        StringBuilder sb = new StringBuilder(length + 33 + String.valueOf(i).length() + 10);
        sb.append("AesGcmSiv Parameters (variant: ");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(i);
        sb.append("-byte key)");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzhde
    public final boolean zza() {
        return this.zzb != zzhfj.zzc;
    }

    public final int zzc() {
        return this.zza;
    }

    public final zzhfj zzd() {
        return this.zzb;
    }
}
