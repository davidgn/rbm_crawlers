package com.google.android.gms.internal.ads;

import java.util.ListIterator;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzgwi extends zzgxz {
    final /* synthetic */ zzgwj zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgwi(zzgwj zzgwjVar, ListIterator listIterator) {
        super(listIterator);
        Objects.requireNonNull(zzgwjVar);
        this.zza = zzgwjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxy
    public final Object zza(Object obj) {
        return this.zza.zzb.apply(obj);
    }
}
