package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzfus extends BroadcastReceiver {
    final /* synthetic */ zzfut zza;

    public zzfus(zzfut zzfutVar) {
        Objects.requireNonNull(zzfutVar);
        this.zza = zzfutVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
            zzfut zzfutVar = this.zza;
            zzfutVar.zzd(true, zzfutVar.zzf());
            zzfutVar.zze(true);
        } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
            zzfut zzfutVar2 = this.zza;
            zzfutVar2.zzd(false, zzfutVar2.zzf());
            zzfutVar2.zze(false);
        }
    }
}
