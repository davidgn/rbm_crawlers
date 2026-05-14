package com.google.android.gms.internal.ads;

import e1.i;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzhup extends zzhwn {
    private final zzhun zza;
    private final zzhuo zzb;

    private zzhup(zzhun zzhunVar, zzhuo zzhuoVar) {
        this.zza = zzhunVar;
        this.zzb = zzhuoVar;
    }

    public static zzhup zzb(zzhun zzhunVar, zzhuo zzhuoVar) {
        return new zzhup(zzhunVar, zzhuoVar);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzhup) {
            zzhup zzhupVar = (zzhup) obj;
            return zzhupVar.zza == this.zza && zzhupVar.zzb == this.zzb;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(zzhup.class, this.zza, this.zzb);
    }

    public final String toString() {
        String zzhunVar = this.zza.toString();
        int length = zzhunVar.length();
        String zzhuoVar = this.zzb.toString();
        StringBuilder sb = new StringBuilder(length + 47 + zzhuoVar.length() + 1);
        i.j(sb, "ML-DSA Parameters (ML-DSA instance: ", zzhunVar, ", variant: ", zzhuoVar);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzhde
    public final boolean zza() {
        return this.zzb != zzhuo.zzb;
    }
}
