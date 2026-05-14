package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import l4.InterfaceC0721a;
/* loaded from: classes.dex */
public final class zzigm implements Iterator, InterfaceC0721a {
    final /* synthetic */ Iterator zza;
    private final /* synthetic */ Iterator zzb;

    public zzigm(Iterator it) {
        this.zza = it;
        this.zzb = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return new zzigo((Map.Entry) this.zza.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
