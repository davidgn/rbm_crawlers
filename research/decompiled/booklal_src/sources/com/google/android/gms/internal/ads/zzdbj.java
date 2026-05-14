package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class zzdbj implements zzilu {
    private final zzdbg zza;

    private zzdbj(zzdbg zzdbgVar) {
        this.zza = zzdbgVar;
    }

    public static zzdbj zzc(zzdbg zzdbgVar) {
        return new zzdbj(zzdbgVar);
    }

    public final Bundle zza() {
        return this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* synthetic */ Object zzb() {
        return this.zza.zzd();
    }
}
