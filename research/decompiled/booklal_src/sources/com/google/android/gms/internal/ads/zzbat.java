package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes.dex */
public final class zzbat extends zzayr {
    public Long zza;
    public Boolean zzb;
    public Boolean zzc;

    public zzbat() {
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    public final HashMap zza() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, this.zza);
        hashMap.put(1, this.zzb);
        hashMap.put(2, this.zzc);
        return hashMap;
    }

    public zzbat(String str) {
        HashMap zzb = zzayr.zzb(str);
        if (zzb != null) {
            this.zza = (Long) zzb.get(0);
            this.zzb = (Boolean) zzb.get(1);
            this.zzc = (Boolean) zzb.get(2);
        }
    }
}
