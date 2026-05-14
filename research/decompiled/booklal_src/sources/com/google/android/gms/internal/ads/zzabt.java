package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
final class zzabt implements zzabu {
    final /* synthetic */ Executor zza;
    final /* synthetic */ zzds zzb;

    public zzabt(Executor executor, zzds zzdsVar) {
        this.zza = executor;
        this.zzb = zzdsVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.zza.execute(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzabu
    public final void zza() {
        this.zzb.zza(this.zza);
    }
}
