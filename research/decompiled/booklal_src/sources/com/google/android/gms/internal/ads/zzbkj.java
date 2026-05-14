package com.google.android.gms.internal.ads;

import com.google.firebase.firestore.util.ExponentialBackoff;
/* loaded from: classes.dex */
public final class zzbkj {
    public static final zzbjf zza;

    static {
        zzbjf.zzb("gads:ad_loader:timeout_ms", ExponentialBackoff.DEFAULT_BACKOFF_MAX_DELAY_MS);
        zza = zzbjf.zzb("gads:rendering:timeout_ms", ExponentialBackoff.DEFAULT_BACKOFF_MAX_DELAY_MS);
        zzbjf.zzb("gads:resolve_future:default_timeout_ms", 30000L);
    }
}
