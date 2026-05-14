package com.google.android.gms.internal.ads;

import e1.i;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzaja extends zzaiy {
    public final String zza;
    public final String zzb;
    public final String zzc;

    public zzaja(String str, String str2, String str3) {
        super("----");
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaja.class == obj.getClass()) {
            zzaja zzajaVar = (zzaja) obj;
            if (Objects.equals(this.zzb, zzajaVar.zzb) && Objects.equals(this.zza, zzajaVar.zza) && Objects.equals(this.zzc, zzajaVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zzb.hashCode() + ((this.zza.hashCode() + 527) * 31);
        return this.zzc.hashCode() + (hashCode * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzaiy
    public final String toString() {
        String str = this.zzf;
        int length = String.valueOf(str).length();
        String str2 = this.zza;
        int length2 = str2.length() + length + 9;
        String str3 = this.zzb;
        StringBuilder sb = new StringBuilder(str3.length() + length2 + 14);
        i.j(sb, str, ": domain=", str2, ", description=");
        sb.append(str3);
        return sb.toString();
    }
}
