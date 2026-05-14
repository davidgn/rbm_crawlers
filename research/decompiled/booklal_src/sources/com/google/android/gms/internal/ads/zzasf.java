package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class zzasf {
    private final Executor zza;

    public zzasf(Handler handler) {
        this.zza = new zzasd(this, handler);
    }

    public final void zza(zzaso zzasoVar, zzasu zzasuVar, Runnable runnable) {
        zzasoVar.zzp();
        zzasoVar.zzc("post-response");
        ((zzasd) this.zza).zza.post(new zzase(zzasoVar, zzasuVar, runnable));
    }

    public final void zzb(zzaso zzasoVar, zzasx zzasxVar) {
        zzasoVar.zzc("post-error");
        ((zzasd) this.zza).zza.post(new zzase(zzasoVar, zzasu.zzb(zzasxVar), null));
    }
}
