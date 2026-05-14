package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes.dex */
public final class zzhfb extends zzhdw {
    private final int zza;
    private final int zzb = 12;
    private final int zzc = 16;
    private final zzhfa zzd;

    public /* synthetic */ zzhfb(int i, int i4, int i5, zzhfa zzhfaVar, byte[] bArr) {
        this.zza = i;
        this.zzd = zzhfaVar;
    }

    public static zzhez zzb() {
        return new zzhez(null);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzhfb) {
            zzhfb zzhfbVar = (zzhfb) obj;
            return zzhfbVar.zza == this.zza && zzhfbVar.zzd == this.zzd;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(zzhfb.class, Integer.valueOf(this.zza), 12, 16, this.zzd);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzd);
        int length = valueOf.length();
        int length2 = String.valueOf(12).length();
        int length3 = String.valueOf(16).length();
        int i = this.zza;
        StringBuilder sb = new StringBuilder(length + 30 + length2 + 10 + length3 + 15 + String.valueOf(i).length() + 10);
        sb.append("AesGcm Parameters (variant: ");
        sb.append(valueOf);
        sb.append(", 12-byte IV, 16-byte tag, and ");
        sb.append(i);
        sb.append("-byte key)");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzhde
    public final boolean zza() {
        return this.zzd != zzhfa.zzc;
    }

    public final int zzc() {
        return this.zza;
    }

    public final zzhfa zzd() {
        return this.zzd;
    }
}
