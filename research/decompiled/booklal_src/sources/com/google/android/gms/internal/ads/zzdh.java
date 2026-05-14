package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class zzdh {
    private static Executor zza;

    public static synchronized Executor zza() {
        Executor executor;
        synchronized (zzdh.class) {
            try {
                if (zza == null) {
                    zza = zzfk.zzf("ExoPlayer:BackgroundExecutor");
                }
                executor = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return executor;
    }
}
