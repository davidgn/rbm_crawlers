package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzdnd implements zzilu {
    private final zzdnc zza;

    private zzdnd(zzdnc zzdncVar) {
        this.zza = zzdncVar;
    }

    public static zzdnd zzc(zzdnc zzdncVar) {
        return new zzdnd(zzdncVar);
    }

    public final com.google.android.gms.ads.internal.client.zzbh zza() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* synthetic */ Object zzb() {
        return this.zza.zzb();
    }
}
