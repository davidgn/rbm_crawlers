package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzguq extends AbstractSet {
    final /* synthetic */ zzgut zza;

    public /* synthetic */ zzguq(zzgut zzgutVar, byte[] bArr) {
        Objects.requireNonNull(zzgutVar);
        this.zza = zzgutVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.zza.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzgut zzgutVar = this.zza;
        Map zzc = zzgutVar.zzc();
        return zzc != null ? zzc.keySet().iterator() : new zzgul(zzgutVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Object obj2;
        zzgut zzgutVar = this.zza;
        Map zzc = zzgutVar.zzc();
        if (zzc != null) {
            return zzc.keySet().remove(obj);
        }
        Object zzj = zzgutVar.zzj(obj);
        obj2 = zzgut.zzd;
        return zzj != obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
