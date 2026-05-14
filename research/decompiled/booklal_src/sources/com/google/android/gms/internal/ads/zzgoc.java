package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class zzgoc {
    private final Set zza;
    private final zzgot zzb;

    public zzgoc(zzgot zzgotVar, Set set) {
        this.zza = set;
        this.zzb = zzgotVar;
    }

    public final void zza(List list) {
        this.zzb.zza(list);
    }

    public final Map zzb() {
        HashMap hashMap = new HashMap();
        for (zzgoe zzgoeVar : this.zza) {
            zzgoeVar.zzb(hashMap);
        }
        return hashMap;
    }

    public final Map zzc(Context context, View view) {
        HashMap hashMap = new HashMap();
        for (zzgoe zzgoeVar : this.zza) {
            zzgoeVar.zzc(hashMap, context, view);
        }
        return hashMap;
    }

    public final Map zzd() {
        HashMap hashMap = new HashMap();
        for (zzgoe zzgoeVar : this.zza) {
            zzgoeVar.zzd(hashMap);
        }
        return hashMap;
    }
}
