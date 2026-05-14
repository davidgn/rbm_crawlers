package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
final class zzilk implements Iterator {
    int zza = 0;
    final /* synthetic */ zzill zzb;

    public zzilk(zzill zzillVar) {
        this.zzb = zzillVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.zza;
        zzill zzillVar = this.zzb;
        return i < zzillVar.zza.size() || zzillVar.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.zza;
        zzill zzillVar = this.zzb;
        List list = zzillVar.zza;
        if (i >= list.size()) {
            list.add(zzillVar.zzb.next());
            return next();
        }
        int i4 = this.zza;
        this.zza = i4 + 1;
        return list.get(i4);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
