package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class zzcay extends zzbdj implements zzcba {
    public zzcay(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void zze() {
        zzda(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void zzf() {
        zzda(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void zzg() {
        zzda(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void zzh() {
        zzda(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void zzi(zzcau zzcauVar) {
        Parcel zza = zza();
        zzbdl.zze(zza, zzcauVar);
        zzda(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void zzj() {
        zzda(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void zzk(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzda(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcba
    public final void zzl() {
        zzda(8, zza());
    }
}
