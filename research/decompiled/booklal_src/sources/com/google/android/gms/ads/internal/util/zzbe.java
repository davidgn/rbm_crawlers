package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class zzbe {
    private final List zza = new ArrayList();
    private final List zzb = new ArrayList();
    private final List zzc = new ArrayList();

    public final zzbe zza(String str, double d2, double d5) {
        List list;
        int i = 0;
        while (true) {
            list = this.zza;
            if (i >= list.size()) {
                break;
            }
            double doubleValue = ((Double) this.zzc.get(i)).doubleValue();
            double doubleValue2 = ((Double) this.zzb.get(i)).doubleValue();
            if (d2 < doubleValue || (doubleValue == d2 && d5 < doubleValue2)) {
                break;
            }
            i++;
        }
        list.add(i, str);
        this.zzc.add(i, Double.valueOf(d2));
        this.zzb.add(i, Double.valueOf(d5));
        return this;
    }

    public final zzbf zzb() {
        return new zzbf(this, null);
    }

    public final /* synthetic */ List zzc() {
        return this.zza;
    }

    public final /* synthetic */ List zzd() {
        return this.zzb;
    }

    public final /* synthetic */ List zze() {
        return this.zzc;
    }
}
