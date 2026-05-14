package com.google.android.gms.internal.ads;

import e1.i;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzhga extends zzhdw {
    private final String zza;
    private final zzhfz zzb;

    private zzhga(String str, zzhfz zzhfzVar) {
        this.zza = str;
        this.zzb = zzhfzVar;
    }

    public static zzhga zzb(String str, zzhfz zzhfzVar) {
        return new zzhga(str, zzhfzVar);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzhga) {
            zzhga zzhgaVar = (zzhga) obj;
            return zzhgaVar.zza.equals(this.zza) && zzhgaVar.zzb.equals(this.zzb);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(zzhga.class, this.zza, this.zzb);
    }

    public final String toString() {
        String zzhfzVar = this.zzb.toString();
        String str = this.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 45 + zzhfzVar.length() + 1);
        i.j(sb, "LegacyKmsAead Parameters (keyUri: ", str, ", variant: ", zzhfzVar);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzhde
    public final boolean zza() {
        return this.zzb != zzhfz.zzb;
    }

    public final String zzc() {
        return this.zza;
    }

    public final zzhfz zzd() {
        return this.zzb;
    }
}
