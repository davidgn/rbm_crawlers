package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class zzevr implements zzfbn {
    private final boolean zza;

    public zzevr(boolean z4) {
        this.zza = z4;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        ((Bundle) obj).putBoolean("ibrr", this.zza);
    }
}
