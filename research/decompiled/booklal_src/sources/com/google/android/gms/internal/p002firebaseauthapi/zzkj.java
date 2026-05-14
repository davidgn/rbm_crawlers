package com.google.android.gms.internal.p002firebaseauthapi;

import C.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzkj  reason: invalid package */
/* loaded from: classes2.dex */
public abstract class zzkj {
    private final Class zza;
    private final Map zzb;
    private final Class zzc;

    @SafeVarargs
    public zzkj(Class cls, zzlg... zzlgVarArr) {
        this.zza = cls;
        HashMap hashMap = new HashMap();
        for (int i = 0; i <= 0; i++) {
            zzlg zzlgVar = zzlgVarArr[i];
            if (hashMap.containsKey(zzlgVar.zzb())) {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(zzlgVar.zzb().getCanonicalName())));
            }
            hashMap.put(zzlgVar.zzb(), zzlgVar);
        }
        this.zzc = zzlgVarArr[0].zzb();
        this.zzb = Collections.unmodifiableMap(hashMap);
    }

    public zzki zza() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }

    public abstract zzso zzb();

    public abstract zzahp zzc(zzaff zzaffVar);

    public abstract String zzd();

    public abstract void zze(zzahp zzahpVar);

    public int zzf() {
        return 1;
    }

    public final Class zzj() {
        return this.zzc;
    }

    public final Class zzk() {
        return this.zza;
    }

    public final Object zzl(zzahp zzahpVar, Class cls) {
        zzlg zzlgVar = (zzlg) this.zzb.get(cls);
        if (zzlgVar != null) {
            return zzlgVar.zza(zzahpVar);
        }
        throw new IllegalArgumentException(a.l("Requested primitive class ", cls.getCanonicalName(), " not supported."));
    }

    public final Set zzm() {
        return this.zzb.keySet();
    }
}
