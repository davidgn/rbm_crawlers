package com.google.android.gms.internal.ads;

import java.util.ArrayList;
/* loaded from: classes.dex */
public final class zzfvl {
    private final zzfum zza;
    private final ArrayList zzb;

    public zzfvl(zzfum zzfumVar, String str) {
        ArrayList arrayList = new ArrayList();
        this.zzb = arrayList;
        this.zza = zzfumVar;
        arrayList.add(str);
    }

    public final void zza(String str) {
        this.zzb.add(str);
    }

    public final zzfum zzb() {
        return this.zza;
    }

    public final ArrayList zzc() {
        return this.zzb;
    }
}
