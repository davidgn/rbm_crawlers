package com.google.android.gms.internal.ads;

import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaay {
    private final Handler zza;
    private final zzaba zzb;
    private boolean zzc;

    public zzaay(Handler handler, zzaba zzabaVar) {
        this.zza = handler;
        this.zzb = zzabaVar;
    }

    public final void zza() {
        this.zzc = true;
    }

    public final /* synthetic */ Handler zzb() {
        return this.zza;
    }

    public final /* synthetic */ zzaba zzc() {
        return this.zzb;
    }

    public final /* synthetic */ boolean zzd() {
        return this.zzc;
    }
}
