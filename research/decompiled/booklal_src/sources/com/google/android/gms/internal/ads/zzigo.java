package com.google.android.gms.internal.ads;

import java.util.Map;
import kotlin.jvm.internal.i;
import l4.InterfaceC0721a;
/* loaded from: classes.dex */
public final class zzigo implements Map.Entry, InterfaceC0721a {
    private final /* synthetic */ Map.Entry zza;

    public zzigo(Map.Entry delegate) {
        i.f(delegate, "delegate");
        this.zza = delegate;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.zza.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.zza.getValue();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
