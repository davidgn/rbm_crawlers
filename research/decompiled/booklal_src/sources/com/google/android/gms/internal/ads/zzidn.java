package com.google.android.gms.internal.ads;

import java.util.AbstractList;
/* loaded from: classes.dex */
public final class zzidn extends AbstractList {
    private final zzidl zza;
    private final zzidm zzb;

    public zzidn(zzidl zzidlVar, zzidm zzidmVar) {
        this.zza = zzidlVar;
        this.zzb = zzidmVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return this.zzb.zzb(this.zza.zzf(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }
}
