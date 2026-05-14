package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
final class zzfbg implements zzfbn {
    private final boolean zza;

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (this.zza) {
            bundle.putBoolean("sdk_prefetch", true);
        }
    }
}
