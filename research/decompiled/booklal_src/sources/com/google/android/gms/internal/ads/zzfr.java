package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
/* loaded from: classes.dex */
public final class zzfr {
    private boolean zza;

    public zzfr(Context context, Looper looper, zzdo zzdoVar) {
        context.getApplicationContext();
        zzdoVar.zzd(looper, null);
        zzdoVar.zzd(Looper.getMainLooper(), null);
    }

    public final void zza(boolean z4) {
        if (this.zza == z4) {
            return;
        }
        this.zza = z4;
    }
}
