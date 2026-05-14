package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes.dex */
final class zzbbh implements Runnable {
    final /* synthetic */ zzbbj zza;

    public zzbbh(zzbbj zzbbjVar) {
        Objects.requireNonNull(zzbbjVar);
        this.zza = zzbbjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzd();
    }
}
