package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class zzbkn {
    private static final AtomicReference zza = new AtomicReference();
    private static final AtomicReference zzb = new AtomicReference();

    static {
        new AtomicBoolean();
    }

    public static zzbkl zza() {
        return (zzbkl) zza.get();
    }

    public static zzbkm zzb() {
        return (zzbkm) zzb.get();
    }

    public static void zzc(zzbkl zzbklVar) {
        zza.set(zzbklVar);
    }
}
