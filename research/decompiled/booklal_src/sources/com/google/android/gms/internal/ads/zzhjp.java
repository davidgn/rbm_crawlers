package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
final class zzhjp implements zzhjr {
    private final AtomicBoolean zza = new AtomicBoolean(false);

    public zzhjp(boolean z4) {
    }

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final boolean zza() {
        return this.zza.get();
    }
}
