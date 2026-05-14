package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class zzetr implements zzfbn {
    private final String zza;

    public zzetr(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        String str = this.zza;
        Bundle bundle = (Bundle) obj;
        if (str != null) {
            bundle.putString("arek", str);
        }
    }
}
