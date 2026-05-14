package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzago extends zzaft {
    private final long zza;

    public zzago(zzafg zzafgVar, long j5) {
        super(zzafgVar);
        zzgsj.zza(zzafgVar.zzn() >= j5);
        this.zza = j5;
    }

    @Override // com.google.android.gms.internal.ads.zzaft, com.google.android.gms.internal.ads.zzafg
    public final long zzm() {
        return super.zzm() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaft, com.google.android.gms.internal.ads.zzafg
    public final long zzn() {
        return super.zzn() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaft, com.google.android.gms.internal.ads.zzafg
    public final long zzo() {
        return super.zzo() - this.zza;
    }
}
