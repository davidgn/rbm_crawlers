package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes.dex */
public final class zzcxa implements zzcxb {
    private final Map zza;

    public zzcxa(Map map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzcxb
    public final zzekx zza(int i, String str) {
        return (zzekx) this.zza.get(str);
    }
}
