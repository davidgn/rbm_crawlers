package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzfup implements Runnable {
    final /* synthetic */ WebView zza;
    final /* synthetic */ String zzb;

    public zzfup(zzfuq zzfuqVar, WebView webView, String str) {
        this.zza = webView;
        this.zzb = str;
        Objects.requireNonNull(zzfuqVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfuq.zzk(this.zza, this.zzb);
    }
}
