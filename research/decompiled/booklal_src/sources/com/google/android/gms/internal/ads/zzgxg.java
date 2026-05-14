package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes.dex */
public abstract class zzgxg implements Comparator {
    public static zzgxg zzb() {
        return zzgxe.zza;
    }

    public static zzgxg zzc(Comparator comparator) {
        return new zzguv(comparator);
    }

    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);

    public zzgxg zza() {
        return new zzgxp(this);
    }

    public final zzgxg zzd(zzgsa zzgsaVar) {
        return new zzguh(zzgsaVar, this);
    }
}
