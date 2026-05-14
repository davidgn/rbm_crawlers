package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class zzeyq implements zzfbn {
    private final Integer zza;

    public zzeyq(Integer num) {
        this.zza = num;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Integer num = this.zza;
        Bundle bundle = (Bundle) obj;
        if (num != null) {
            bundle.putInt("dspct", Math.min(num.intValue(), 20));
        }
    }
}
