package com.google.android.gms.internal.ads;

import N2.o;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final class zzewf implements zzfbp {
    private final zzhbf zza;

    public zzewf(zzhbf zzhbfVar) {
        this.zza = zzhbfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfbp
    public final o zza() {
        return this.zza.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzewe
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return new zzewg(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - com.google.android.gms.ads.internal.zzt.zzh().zzo().zzi().zzb());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfbp
    public final int zzb() {
        return 55;
    }
}
