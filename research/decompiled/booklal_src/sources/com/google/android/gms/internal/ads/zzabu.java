package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public interface zzabu extends Executor {
    static zzabu zzb(Executor executor, zzds zzdsVar) {
        return new zzabt(executor, zzdsVar);
    }

    void zza();
}
