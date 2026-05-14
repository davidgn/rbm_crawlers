package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes.dex */
final class zziea {
    public static final List zza(Object obj, long j5) {
        zzidp zzidpVar = (zzidp) zziga.zzn(obj, j5);
        if (zzidpVar.zza()) {
            return zzidpVar;
        }
        int size = zzidpVar.size();
        zzidp zzh = zzidpVar.zzh(size == 0 ? 10 : size + size);
        zziga.zzo(obj, j5, zzh);
        return zzh;
    }
}
