package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes.dex */
final class zzgzz extends zzgzy {
    private static final AtomicReferenceFieldUpdater zza = AtomicReferenceFieldUpdater.newUpdater(zzhab.class, Set.class, "seenExceptionsField");
    private static final AtomicIntegerFieldUpdater zzb = AtomicIntegerFieldUpdater.newUpdater(zzhab.class, "remainingField");

    private zzgzz() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgzy
    public final void zza(zzhab zzhabVar, Set set, Set set2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = zza;
        while (!atomicReferenceFieldUpdater.compareAndSet(zzhabVar, null, set2) && atomicReferenceFieldUpdater.get(zzhabVar) == null) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgzy
    public final int zzb(zzhab zzhabVar) {
        return zzb.decrementAndGet(zzhabVar);
    }

    public /* synthetic */ zzgzz(byte[] bArr) {
        super(null);
    }
}
