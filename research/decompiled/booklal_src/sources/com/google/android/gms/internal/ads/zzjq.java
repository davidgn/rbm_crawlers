package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzjq {
    private final Map zza;
    private zzis zzb;

    public /* synthetic */ zzjq(zzla zzlaVar, int i, byte[] bArr) {
        Objects.requireNonNull(zzlaVar);
        this.zza = new HashMap();
        this.zzb = zzis.zza;
    }

    private static final zzis zzb(zzis zzisVar, List list) {
        zzir zzirVar = new zzir(zzisVar, null);
        HashSet hashSet = new HashSet(list);
        for (String str : zzisVar.zza()) {
            if (!hashSet.contains(str)) {
                zzirVar.zzf(str);
            }
        }
        return zzirVar.zzg();
    }

    public final /* synthetic */ void zza(zzis zzisVar) {
        for (Map.Entry entry : new HashMap(this.zza).entrySet()) {
            zzit zzitVar = (zzit) entry.getKey();
            List list = (List) entry.getValue();
            if (!zzb(zzisVar, list).equals(zzb(this.zzb, list))) {
                zzitVar.zza();
            }
        }
        this.zzb = zzisVar;
    }
}
