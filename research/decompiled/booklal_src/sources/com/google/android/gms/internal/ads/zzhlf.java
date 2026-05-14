package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class zzhlf {
    private HashMap zza = new HashMap();

    public final zzhlg zza() {
        if (this.zza != null) {
            zzhlg zzhlgVar = new zzhlg(Collections.unmodifiableMap(this.zza), null);
            this.zza = null;
            return zzhlgVar;
        }
        throw new IllegalStateException("cannot call build() twice");
    }
}
