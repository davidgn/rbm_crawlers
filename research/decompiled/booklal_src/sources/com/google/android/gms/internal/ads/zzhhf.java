package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzhhf extends zzhdw {
    private final zzhhe zza;
    private final int zzb;

    private zzhhf(zzhhe zzhheVar, int i) {
        this.zza = zzhheVar;
        this.zzb = i;
    }

    public static zzhhf zzb(zzhhe zzhheVar, int i) {
        if (i < 8 || i > 12) {
            throw new GeneralSecurityException("Salt size must be between 8 and 12 bytes");
        }
        return new zzhhf(zzhheVar, i);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzhhf) {
            zzhhf zzhhfVar = (zzhhf) obj;
            return zzhhfVar.zza == this.zza && zzhhfVar.zzb == this.zzb;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(zzhhf.class, this.zza, Integer.valueOf(this.zzb));
    }

    public final String toString() {
        String zzhheVar = this.zza.toString();
        int length = zzhheVar.length();
        int i = this.zzb;
        StringBuilder sb = new StringBuilder(length + 48 + String.valueOf(i).length() + 1);
        sb.append("X-AES-GCM Parameters (variant: ");
        sb.append(zzhheVar);
        sb.append("salt_size_bytes: ");
        sb.append(i);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzhde
    public final boolean zza() {
        return this.zza != zzhhe.zzb;
    }

    public final zzhhe zzc() {
        return this.zza;
    }

    public final int zzd() {
        return this.zzb;
    }
}
