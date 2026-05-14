package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class zzeui implements zzfbn {
    private final Bundle zza;

    public zzeui(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = this.zza;
        Bundle bundle2 = (Bundle) obj;
        if (bundle.isEmpty()) {
            return;
        }
        bundle2.putBundle("installed_adapter_data", bundle);
    }
}
