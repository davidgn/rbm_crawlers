package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzgus extends AbstractCollection {
    final /* synthetic */ zzgut zza;

    public /* synthetic */ zzgus(zzgut zzgutVar, byte[] bArr) {
        Objects.requireNonNull(zzgutVar);
        this.zza = zzgutVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzgut zzgutVar = this.zza;
        Map zzc = zzgutVar.zzc();
        return zzc != null ? zzc.values().iterator() : new zzgun(zzgutVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.zza.size();
    }
}
