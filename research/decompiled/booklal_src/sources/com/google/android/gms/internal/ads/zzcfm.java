package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
abstract class zzcfm {
    private final WeakReference zza;

    public zzcfm(View view) {
        this.zza = new WeakReference(view);
    }

    public abstract void zza(ViewTreeObserver viewTreeObserver);

    public abstract void zzb(ViewTreeObserver viewTreeObserver);

    public final void zzc() {
        ViewTreeObserver zze = zze();
        if (zze != null) {
            zza(zze);
        }
    }

    public final void zzd() {
        ViewTreeObserver zze = zze();
        if (zze != null) {
            zzb(zze);
        }
    }

    public final ViewTreeObserver zze() {
        ViewTreeObserver viewTreeObserver;
        View view = (View) this.zza.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }
}
