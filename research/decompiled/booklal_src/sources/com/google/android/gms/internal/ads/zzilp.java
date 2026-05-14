package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;
/* loaded from: classes.dex */
public class zzilp {
    final LinkedHashMap zza;

    public zzilp(int i) {
        this.zza = zzilr.zzc(i);
    }

    public final zzilp zza(Object obj, zzimd zzimdVar) {
        zzimc.zza(obj, "key");
        zzimc.zza(zzimdVar, "provider");
        this.zza.put(obj, zzimdVar);
        return this;
    }
}
