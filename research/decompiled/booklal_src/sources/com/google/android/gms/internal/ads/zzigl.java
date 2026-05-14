package com.google.android.gms.internal.ads;

import java.util.Iterator;
import kotlin.jvm.internal.i;
import l4.InterfaceC0721a;
/* loaded from: classes.dex */
public final class zzigl implements Iterator, InterfaceC0721a {
    private final /* synthetic */ Iterator zza;

    public zzigl(Iterator delegate) {
        i.f(delegate, "delegate");
        this.zza = delegate;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
