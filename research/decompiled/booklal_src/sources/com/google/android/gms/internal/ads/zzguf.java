package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
abstract class zzguf<K, V> implements zzgwu<K, V> {
    private transient Set zza;
    private transient Collection zzb;
    private transient Map zzc;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgwu) {
            return zzu().equals(((zzgwu) obj).zzu());
        }
        return false;
    }

    public final int hashCode() {
        return zzu().hashCode();
    }

    public final String toString() {
        return zzu().toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgwu
    public boolean zze(Object obj, Object obj2) {
        throw null;
    }

    public abstract Set zzh();

    public abstract Collection zzj();

    public Iterator zzk() {
        throw null;
    }

    public abstract Map zzl();

    public boolean zzr(Object obj) {
        for (V v5 : zzu().values()) {
            if (v5.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public final Set zzs() {
        Set set = this.zza;
        if (set == null) {
            Set zzh = zzh();
            this.zza = zzh;
            return zzh;
        }
        return set;
    }

    @Override // com.google.android.gms.internal.ads.zzgwu
    public Collection zzt() {
        Collection collection = this.zzb;
        if (collection == null) {
            Collection zzj = zzj();
            this.zzb = zzj;
            return zzj;
        }
        return collection;
    }

    @Override // com.google.android.gms.internal.ads.zzgwu
    public Map zzu() {
        Map map = this.zzc;
        if (map == null) {
            Map zzl = zzl();
            this.zzc = zzl;
            return zzl;
        }
        return map;
    }
}
