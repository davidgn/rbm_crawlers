package com.google.android.gms.internal.ads;

import N2.o;
import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
/* loaded from: classes.dex */
public final class zzflc {
    private final Deque zza = new LinkedBlockingDeque();
    private final Callable zzb;
    private final zzhbf zzc;

    public zzflc(Callable callable, zzhbf zzhbfVar) {
        this.zzb = callable;
        this.zzc = zzhbfVar;
    }

    public final synchronized void zza(int i) {
        Deque deque = this.zza;
        int size = i - deque.size();
        for (int i4 = 0; i4 < size; i4++) {
            deque.add(this.zzc.submit(this.zzb));
        }
    }

    public final synchronized o zzb() {
        zza(1);
        return (o) this.zza.poll();
    }

    public final synchronized void zzc(o oVar) {
        this.zza.addFirst(oVar);
    }
}
