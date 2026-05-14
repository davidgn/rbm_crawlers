package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes.dex */
public final class zzfuo {
    private static final zzfuo zza = new zzfuo();
    private Context zzb;

    private zzfuo() {
    }

    public static zzfuo zza() {
        return zza;
    }

    public final Context zzb() {
        return this.zzb;
    }

    public final void zzc(Context context) {
        this.zzb = context != null ? context.getApplicationContext() : null;
    }
}
