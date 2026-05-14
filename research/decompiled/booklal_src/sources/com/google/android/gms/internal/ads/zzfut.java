package com.google.android.gms.internal.ads;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.IntentFilter;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class zzfut {
    private static final zzfut zza = new zzfut();
    private WeakReference zzb;
    private boolean zzc = false;
    private boolean zzd = false;

    public static zzfut zza() {
        return zza;
    }

    public final void zzb(Context context) {
        if (context == null) {
            return;
        }
        this.zzb = new WeakReference(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new zzfus(this), intentFilter);
    }

    public final void zzc() {
        KeyguardManager keyguardManager;
        Context context = (Context) this.zzb.get();
        if (context == null || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null) {
            return;
        }
        boolean isDeviceLocked = keyguardManager.isDeviceLocked();
        zzd(this.zzc, isDeviceLocked);
        this.zzd = isDeviceLocked;
    }

    public final void zzd(boolean z4, boolean z5) {
        if ((z5 || z4) == (this.zzd || this.zzc)) {
            return;
        }
        for (zzftp zzftpVar : zzfuj.zza().zze()) {
            zzftpVar.zzg().zzg(z5 || z4);
        }
    }

    public final /* synthetic */ void zze(boolean z4) {
        this.zzc = z4;
    }

    public final /* synthetic */ boolean zzf() {
        return this.zzd;
    }
}
