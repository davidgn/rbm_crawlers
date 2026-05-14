package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzagh {
    public final zzagk zza;
    public final zzagk zzb;

    public zzagh(zzagk zzagkVar, zzagk zzagkVar2) {
        this.zza = zzagkVar;
        this.zzb = zzagkVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagh.class == obj.getClass()) {
            zzagh zzaghVar = (zzagh) obj;
            if (this.zza.equals(zzaghVar.zza) && this.zzb.equals(zzaghVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode() + (this.zza.hashCode() * 31);
    }

    public final String toString() {
        zzagk zzagkVar = this.zza;
        zzagk zzagkVar2 = this.zzb;
        String zzagkVar3 = zzagkVar.toString();
        String concat = zzagkVar.equals(zzagkVar2) ? "" : ", ".concat(zzagkVar2.toString());
        return C.a.r(new StringBuilder(com.google.android.gms.ads.internal.util.client.a.c(zzagkVar3.length() + 1, 1, concat)), "[", zzagkVar3, concat, "]");
    }
}
