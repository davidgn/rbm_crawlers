package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahk  reason: invalid package */
/* loaded from: classes2.dex */
final class zzahk {
    public static final int zza(int i, Object obj, Object obj2) {
        zzahj zzahjVar = (zzahj) obj;
        zzahi zzahiVar = (zzahi) obj2;
        if (zzahjVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzahjVar.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw null;
        }
        return 0;
    }

    public static final boolean zzb(Object obj) {
        return !((zzahj) obj).zze();
    }

    public static final Object zzc(Object obj, Object obj2) {
        zzahj zzahjVar = (zzahj) obj;
        zzahj zzahjVar2 = (zzahj) obj2;
        if (!zzahjVar2.isEmpty()) {
            if (!zzahjVar.zze()) {
                zzahjVar = zzahjVar.zzb();
            }
            zzahjVar.zzd(zzahjVar2);
        }
        return zzahjVar;
    }
}
