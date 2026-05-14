package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes.dex */
public final class zzdhz implements zzilu {
    private final zzdhw zza;

    private zzdhz(zzdhw zzdhwVar) {
        this.zza = zzdhwVar;
    }

    public static zzdhz zza(zzdhw zzdhwVar) {
        return new zzdhz(zzdhwVar);
    }

    public static Set zzc(zzdhw zzdhwVar) {
        Set emptySet = Collections.emptySet();
        zzimc.zzb(emptySet);
        return emptySet;
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* synthetic */ Object zzb() {
        return zzc(this.zza);
    }
}
