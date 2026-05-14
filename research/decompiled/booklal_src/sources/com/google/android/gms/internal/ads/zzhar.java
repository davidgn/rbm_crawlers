package com.google.android.gms.internal.ads;

import N2.o;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes.dex */
public abstract class zzhar extends zzhap implements o {
    @Override // N2.o
    public final void addListener(Runnable runnable, Executor executor) {
        zzc().addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzhap
    public /* bridge */ /* synthetic */ Future zza() {
        throw null;
    }

    public abstract o zzc();
}
