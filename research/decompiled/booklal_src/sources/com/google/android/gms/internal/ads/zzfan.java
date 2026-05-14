package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class zzfan implements zzfbn {
    private final String zza;

    public zzfan(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        ((Bundle) obj).putString("request_id", this.zza);
    }
}
