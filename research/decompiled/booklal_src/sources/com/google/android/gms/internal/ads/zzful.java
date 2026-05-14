package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
/* loaded from: classes.dex */
public class zzful implements Application.ActivityLifecycleCallbacks {
    protected boolean zza;
    private boolean zzb;
    private zzfuk zzc;

    private final boolean zza() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo.importance == 100 || zzb();
    }

    private final void zzh(boolean z4) {
        if (this.zza != z4) {
            this.zza = z4;
            if (this.zzb) {
                zzc(z4);
                zzfuk zzfukVar = this.zzc;
                if (zzfukVar != null) {
                    zzfukVar.zzd(z4);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zzh(true);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zzh(zza());
    }

    public boolean zzb() {
        return false;
    }

    public void zzc(boolean z4) {
    }

    public final void zzd(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    public final void zze() {
        this.zzb = true;
        boolean zza = zza();
        this.zza = zza;
        zzc(zza);
    }

    public final void zzf() {
        this.zzb = false;
        this.zzc = null;
    }

    public final void zzg(zzfuk zzfukVar) {
        this.zzc = zzfukVar;
    }
}
