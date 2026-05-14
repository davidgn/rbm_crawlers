package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgwl extends AbstractSequentialList implements Serializable {
    final List zza;
    final zzgsa zzb;

    public zzgwl(List list, zzgsa zzgsaVar) {
        list.getClass();
        this.zza = list;
        this.zzb = zzgsaVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.zza.isEmpty();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new zzgwk(this, this.zza.listIterator(i));
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i4) {
        this.zza.subList(i, i4).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }
}
