package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes.dex */
public final class zzhlg {
    public static final zzhlg zza = new zzhlf().zza();
    private final Map zzb;

    public final boolean equals(Object obj) {
        if (obj instanceof zzhlg) {
            return this.zzb.equals(((zzhlg) obj).zzb);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode();
    }

    public final String toString() {
        return this.zzb.toString();
    }

    public final boolean zza() {
        return this.zzb.isEmpty();
    }
}
