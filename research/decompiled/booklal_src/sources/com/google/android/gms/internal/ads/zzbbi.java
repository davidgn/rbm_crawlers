package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzbbi extends BroadcastReceiver {
    final /* synthetic */ zzbbj zza;

    public zzbbi(zzbbj zzbbjVar) {
        Objects.requireNonNull(zzbbjVar);
        this.zza = zzbbjVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zza.zzd();
    }
}
