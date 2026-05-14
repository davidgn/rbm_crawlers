package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.os.Bundle;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class zzbb implements Application.ActivityLifecycleCallbacks {
    final /* synthetic */ zzbe zza;
    private final Activity zzb;

    public zzbb(zzbe zzbeVar, Activity activity) {
        Objects.requireNonNull(zzbeVar);
        this.zza = zzbeVar;
        this.zzb = activity;
    }

    public static /* bridge */ /* synthetic */ void zza(zzbb zzbbVar) {
        zzbbVar.zzb();
    }

    public final void zzb() {
        Application application;
        application = this.zza.zzc;
        application.unregisterActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Dialog dialog;
        Dialog dialog2;
        zzbz zzbzVar;
        AtomicReference atomicReference;
        Dialog dialog3;
        Dialog dialog4;
        Application application;
        AtomicReference atomicReference2;
        zzbz zzbzVar2;
        zzbe zzbeVar = this.zza;
        dialog = zzbeVar.zzi;
        if (dialog == null || !zzbeVar.zza) {
            return;
        }
        dialog2 = zzbeVar.zzi;
        dialog2.setOwnerActivity(activity);
        zzbzVar = zzbeVar.zzd;
        if (zzbzVar != null) {
            zzbzVar2 = zzbeVar.zzd;
            zzbzVar2.zza(activity);
        }
        atomicReference = zzbeVar.zzn;
        zzbb zzbbVar = (zzbb) atomicReference.getAndSet(null);
        if (zzbbVar != null) {
            zzbbVar.zzb();
            zzbb zzbbVar2 = new zzbb(zzbeVar, activity);
            application = zzbeVar.zzc;
            application.registerActivityLifecycleCallbacks(zzbbVar2);
            atomicReference2 = zzbeVar.zzn;
            atomicReference2.set(zzbbVar2);
        }
        dialog3 = zzbeVar.zzi;
        if (dialog3 != null) {
            dialog4 = zzbeVar.zzi;
            dialog4.show();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Dialog dialog;
        Dialog dialog2;
        if (activity != this.zzb) {
            return;
        }
        if (activity.isChangingConfigurations()) {
            zzbe zzbeVar = this.zza;
            if (zzbeVar.zza) {
                dialog = zzbeVar.zzi;
                if (dialog != null) {
                    dialog2 = zzbeVar.zzi;
                    dialog2.dismiss();
                    return;
                }
            }
        }
        this.zza.zzh(new zzg(3, "Activity is destroyed."));
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
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
