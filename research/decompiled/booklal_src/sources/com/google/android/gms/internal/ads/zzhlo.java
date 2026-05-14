package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzhlo {
    private static final zzhlo zzb = new zzhlo();
    private final Map zza = new HashMap();

    public static zzhlo zza() {
        return zzb;
    }

    public final synchronized void zzb(zzhln zzhlnVar, Class cls) {
        try {
            Map map = this.zza;
            zzhln zzhlnVar2 = (zzhln) map.get(cls);
            if (zzhlnVar2 != null && !zzhlnVar2.equals(zzhlnVar)) {
                throw new GeneralSecurityException("Different key creator for parameters class already inserted");
            }
            map.put(cls, zzhlnVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
