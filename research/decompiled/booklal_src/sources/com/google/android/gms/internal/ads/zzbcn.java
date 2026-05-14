package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes.dex */
final class zzbcn implements Runnable {
    final /* synthetic */ zzbco zza;

    public zzbcn(zzbco zzbcoVar) {
        Objects.requireNonNull(zzbcoVar);
        this.zza = zzbcoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzb();
    }
}
