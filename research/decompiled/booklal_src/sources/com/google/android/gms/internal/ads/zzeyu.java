package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class zzeyu implements zzfbn {
    private final boolean zza;

    public zzeyu(boolean z4) {
        this.zza = z4;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        ((Bundle) obj).putBoolean("is_gbid", this.zza);
    }
}
