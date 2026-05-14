package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes.dex */
final class zziau implements Map.Entry {
    zziau zza;
    zziau zzb;
    zziau zzc;
    zziau zzd;
    zziau zze;
    final Object zzf;
    final boolean zzg;
    Object zzh;
    int zzi;

    public zziau(boolean z4) {
        this.zzf = null;
        this.zzg = z4;
        this.zze = this;
        this.zzd = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.zzf;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.zzh;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.zzf;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.zzh;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.zzf;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.zzh;
        return hashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj != null || this.zzg) {
            Object obj2 = this.zzh;
            this.zzh = obj;
            return obj2;
        }
        throw new NullPointerException("value == null");
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzf);
        String valueOf2 = String.valueOf(this.zzh);
        return C.a.q(new StringBuilder(valueOf.length() + 1 + valueOf2.length()), valueOf, "=", valueOf2);
    }

    public zziau(boolean z4, zziau zziauVar, Object obj, zziau zziauVar2, zziau zziauVar3) {
        this.zza = zziauVar;
        this.zzf = obj;
        this.zzg = z4;
        this.zzi = 1;
        this.zzd = zziauVar2;
        this.zze = zziauVar3;
        zziauVar3.zzd = this;
        zziauVar2.zze = this;
    }
}
