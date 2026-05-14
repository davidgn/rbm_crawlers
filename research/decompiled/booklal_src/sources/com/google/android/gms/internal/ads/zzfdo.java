package com.google.android.gms.internal.ads;

import N2.o;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final class zzfdo implements zzfbp {
    final zzhbf zza;
    final List zzb;

    public zzfdo(zzbhf zzbhfVar, zzhbf zzhbfVar, List list) {
        this.zza = zzhbfVar;
        this.zzb = list;
    }

    @Override // com.google.android.gms.internal.ads.zzfbp
    public final o zza() {
        return this.zza.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzfdn
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return new zzfdp(zzfdo.this.zzb);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfbp
    public final int zzb() {
        return 48;
    }
}
