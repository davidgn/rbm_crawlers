package com.google.android.gms.internal.ads;

import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgxp extends zzgxg implements Serializable {
    final zzgxg zza;

    public zzgxp(zzgxg zzgxgVar) {
        this.zza = zzgxgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxg, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.zza.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgxp) {
            return this.zza.equals(((zzgxp) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return -this.zza.hashCode();
    }

    public final String toString() {
        return this.zza.toString().concat(".reverse()");
    }
}
