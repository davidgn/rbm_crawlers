package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzhme {
    private final Map zza = new HashMap();

    public final zzhme zza(zzhzy zzhzyVar, Object obj) {
        List list;
        if (zzhzyVar.zzd() == 0 || zzhzyVar.zzd() == 5) {
            Map map = this.zza;
            if (map.containsKey(zzhzyVar)) {
                list = (List) map.get(zzhzyVar);
            } else {
                ArrayList arrayList = new ArrayList();
                map.put(zzhzyVar, arrayList);
                list = arrayList;
            }
            list.add(obj);
            return this;
        }
        throw new GeneralSecurityException("PrefixMap only supports 0 and 5 byte prefixes");
    }

    public final zzhmg zzb() {
        return new zzhmg(this.zza, null);
    }
}
