package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzhmd implements Iterable {
    final /* synthetic */ List zza;
    final /* synthetic */ List zzb;

    public zzhmd(zzhmg zzhmgVar, List list, List list2) {
        this.zza = list;
        this.zzb = list2;
        Objects.requireNonNull(zzhmgVar);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new zzhmf(this.zza.iterator(), this.zzb.iterator(), null);
    }
}
