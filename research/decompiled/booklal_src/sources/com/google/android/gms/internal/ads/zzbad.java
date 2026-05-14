package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes.dex */
public final class zzbad extends zzayr {
    public Long zza;
    public Long zzb;
    public Long zzc;

    public zzbad() {
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    public final HashMap zza() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, this.zza);
        hashMap.put(1, this.zzb);
        hashMap.put(2, this.zzc);
        return hashMap;
    }

    public zzbad(String str) {
        HashMap zzb = zzayr.zzb(str);
        if (zzb != null) {
            this.zza = (Long) zzb.get(0);
            this.zzb = (Long) zzb.get(1);
            this.zzc = (Long) zzb.get(2);
        }
    }
}
