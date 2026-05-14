package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
final class zzfbj implements zzfbn {
    private final Bundle zza;

    public zzfbj(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = this.zza;
        Bundle bundle2 = (Bundle) obj;
        if (bundle.isEmpty()) {
            return;
        }
        bundle2.putBundle("shared_pref", bundle);
    }
}
