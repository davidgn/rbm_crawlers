package com.google.android.gms.internal.ads;

import java.io.Serializable;
/* loaded from: classes.dex */
public abstract class zzgsh implements Serializable {
    public static zzgsh zzc() {
        return zzgrq.zza;
    }

    public static zzgsh zzd(Object obj) {
        return obj == null ? zzgrq.zza : new zzgso(obj);
    }

    public abstract Object zza(Object obj);

    public abstract zzgsh zzb(zzgsa zzgsaVar);
}
