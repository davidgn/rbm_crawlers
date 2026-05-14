package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class zzgdn implements zzgdl {
    private final Executor zza;
    private final Queue zzb = new PriorityQueue();

    public zzgdn(Executor executor, zzgbo zzgboVar) {
        this.zza = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzgdl
    public final void zza(Runnable runnable, long j5) {
        if (j5 <= 0) {
            this.zza.execute(runnable);
            return;
        }
        zzgdp zzgdpVar = new zzgdp(runnable, System.currentTimeMillis() + j5);
        Queue queue = this.zzb;
        synchronized (queue) {
            queue.add(zzgdpVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdl
    public final void zzb() {
        Queue queue = this.zzb;
        synchronized (queue) {
            try {
                if (queue.isEmpty()) {
                    return;
                }
                PriorityQueue priorityQueue = new PriorityQueue();
                long currentTimeMillis = System.currentTimeMillis();
                for (zzgdp zzgdpVar = (zzgdp) queue.peek(); zzgdpVar != null && zzgdpVar.zzb <= currentTimeMillis; zzgdpVar = (zzgdp) queue.peek()) {
                    priorityQueue.add(zzgdpVar);
                    zzgdp zzgdpVar2 = (zzgdp) queue.poll();
                }
                Iterator it = priorityQueue.iterator();
                while (it.hasNext()) {
                    try {
                        this.zza.execute(((zzgdp) it.next()).zza);
                    } catch (RuntimeException unused) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
