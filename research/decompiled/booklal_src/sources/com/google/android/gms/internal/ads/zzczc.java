package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public final class zzczc {
    private final Object zza = new Object();
    private final ConcurrentHashMap zzb = new ConcurrentHashMap();
    private final ConcurrentHashMap zzc = new ConcurrentHashMap();
    private final ConcurrentHashMap zzd = new ConcurrentHashMap();

    public final void zza(String str) {
        synchronized (this.zza) {
            try {
                ConcurrentHashMap concurrentHashMap = this.zzb;
                Integer num = (Integer) concurrentHashMap.get(str);
                concurrentHashMap.put(str, num == null ? 1 : Integer.valueOf(num.intValue() + 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int zzb(String str) {
        Integer num = (Integer) this.zzb.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public final long zzc(String str) {
        Long l5 = (Long) this.zzd.get(str);
        if (l5 == null) {
            return -1L;
        }
        return l5.longValue();
    }

    public final void zzd(String str, long j5) {
        this.zzc.put(str, Long.valueOf(j5));
    }

    public final void zze(String str, String str2, long j5) {
        ConcurrentHashMap concurrentHashMap = this.zzc;
        Long l5 = (Long) concurrentHashMap.get(str2);
        if (l5 == null) {
            return;
        }
        concurrentHashMap.remove(str2);
        this.zzd.put(str, Long.valueOf(j5 - l5.longValue()));
    }
}
