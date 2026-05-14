package com.google.android.gms.internal.ads;

import java.util.ListIterator;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzgwk extends zzgxz {
    final /* synthetic */ zzgwl zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgwk(zzgwl zzgwlVar, ListIterator listIterator) {
        super(listIterator);
        Objects.requireNonNull(zzgwlVar);
        this.zza = zzgwlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxy
    public final Object zza(Object obj) {
        return this.zza.zzb.apply(obj);
    }
}
