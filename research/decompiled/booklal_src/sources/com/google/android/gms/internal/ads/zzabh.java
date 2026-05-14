package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
final /* synthetic */ class zzabh implements zzds {
    static final /* synthetic */ zzabh zza = new zzabh();

    private /* synthetic */ zzabh() {
    }

    @Override // com.google.android.gms.internal.ads.zzds
    public final /* synthetic */ void zza(Object obj) {
        ((ExecutorService) obj).shutdown();
    }
}
