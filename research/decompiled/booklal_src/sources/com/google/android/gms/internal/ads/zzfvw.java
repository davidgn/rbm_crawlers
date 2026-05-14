package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class zzfvw {
    private final BlockingQueue zza;
    private final ThreadPoolExecutor zzb;
    private final ArrayDeque zzc = new ArrayDeque();
    private zzfvv zzd = null;

    public zzfvw() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.zza = linkedBlockingQueue;
        this.zzb = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private final void zzc() {
        zzfvv zzfvvVar = (zzfvv) this.zzc.poll();
        this.zzd = zzfvvVar;
        if (zzfvvVar != null) {
            zzfvvVar.executeOnExecutor(this.zzb, new Object[0]);
        }
    }

    public final void zza(zzfvv zzfvvVar) {
        zzfvvVar.zzb(this);
        this.zzc.add(zzfvvVar);
        if (this.zzd == null) {
            zzc();
        }
    }

    public final void zzb(zzfvv zzfvvVar) {
        this.zzd = null;
        zzc();
    }
}
