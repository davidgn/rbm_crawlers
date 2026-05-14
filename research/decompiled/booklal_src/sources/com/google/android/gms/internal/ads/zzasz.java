package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
final class zzasz {
    public static final boolean zza = zzata.zzb;
    private final List zzb = new ArrayList();
    private boolean zzc = false;

    public final void finalize() {
        if (this.zzc) {
            return;
        }
        zzb("Request on the loose");
        zzata.zzc("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
    }

    public final synchronized void zza(String str, long j5) {
        if (this.zzc) {
            throw new IllegalStateException("Marker added to finished log");
        }
        this.zzb.add(new zzasy(str, j5, SystemClock.elapsedRealtime()));
    }

    public final synchronized void zzb(String str) {
        this.zzc = true;
        List<zzasy> list = this.zzb;
        long j5 = list.size() == 0 ? 0L : ((zzasy) list.get(list.size() - 1)).zzc - ((zzasy) list.get(0)).zzc;
        if (j5 > 0) {
            long j6 = ((zzasy) list.get(0)).zzc;
            zzata.zzb("(%-4d ms) %s", Long.valueOf(j5), str);
            for (zzasy zzasyVar : list) {
                long j7 = zzasyVar.zzc;
                zzata.zzb("(+%-4d) [%2d] %s", Long.valueOf(j7 - j6), Long.valueOf(zzasyVar.zzb), zzasyVar.zza);
                j6 = j7;
            }
        }
    }
}
