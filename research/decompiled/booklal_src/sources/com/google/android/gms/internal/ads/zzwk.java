package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public final class zzwk {
    private static final AtomicLong zza = new AtomicLong();

    public zzwk(long j5, zzhm zzhmVar, Uri uri, Map map, long j6, long j7, long j8) {
    }

    public static long zza() {
        return zza.getAndIncrement();
    }
}
