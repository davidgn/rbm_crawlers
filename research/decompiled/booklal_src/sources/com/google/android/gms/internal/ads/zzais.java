package com.google.android.gms.internal.ads;

import e1.i;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzais extends zzaiy {
    public final String zza;
    public final String zzb;
    public final String zzc;

    public zzais(String str, String str2, String str3) {
        super("COMM");
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzais.class == obj.getClass()) {
            zzais zzaisVar = (zzais) obj;
            if (Objects.equals(this.zzb, zzaisVar.zzb) && Objects.equals(this.zza, zzaisVar.zza) && Objects.equals(this.zzc, zzaisVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zzb.hashCode() + ((this.zza.hashCode() + 527) * 31);
        String str = this.zzc;
        return (hashCode * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzaiy
    public final String toString() {
        String str = this.zzf;
        int length = String.valueOf(str).length();
        String str2 = this.zzc;
        int length2 = String.valueOf(str2).length();
        String str3 = this.zza;
        int length3 = str3.length() + length + 11;
        String str4 = this.zzb;
        StringBuilder sb = new StringBuilder(str4.length() + length3 + 14 + 7 + length2);
        i.j(sb, str, ": language=", str3, ", description=");
        return C.a.q(sb, str4, ", text=", str2);
    }
}
