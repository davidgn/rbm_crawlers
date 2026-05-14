package com.google.android.gms.internal.ads;

import N2.o;
import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class zzfdc implements zzfbp {
    final zzhbf zza;

    public zzfdc(zzbgj zzbgjVar, zzhbf zzhbfVar, Context context) {
        this.zza = zzhbfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfbp
    public final o zza() {
        return this.zza.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzfdb
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return new zzfdd(new JSONObject());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfbp
    public final int zzb() {
        return 45;
    }
}
