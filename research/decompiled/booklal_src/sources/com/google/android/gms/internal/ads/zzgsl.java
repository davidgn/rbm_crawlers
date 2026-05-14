package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes.dex */
final class zzgsl implements Serializable, zzgsk {
    private final List zza;

    public final boolean equals(Object obj) {
        if (obj instanceof zzgsl) {
            return this.zza.equals(((zzgsl) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Predicates.and(");
        boolean z4 = true;
        for (Object obj : this.zza) {
            if (!z4) {
                sb.append(',');
            }
            sb.append(obj);
            z4 = false;
        }
        sb.append(')');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgsk
    public final boolean zza(Object obj) {
        int i = 0;
        while (true) {
            List list = this.zza;
            if (i >= list.size()) {
                return true;
            }
            if (!((zzgsk) list.get(i)).zza(obj)) {
                return false;
            }
            i++;
        }
    }
}
