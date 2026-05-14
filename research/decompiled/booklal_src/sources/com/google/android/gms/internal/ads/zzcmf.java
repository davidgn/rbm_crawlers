package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzcmf extends Thread {
    final /* synthetic */ Runnable zza;
    final /* synthetic */ zzcmg zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcmf(zzcmg zzcmgVar, Runnable runnable, String str, Runnable runnable2) {
        super(runnable, str);
        this.zza = runnable2;
        Objects.requireNonNull(zzcmgVar);
        this.zzb = zzcmgVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.zzb.zza());
        this.zza.run();
    }
}
