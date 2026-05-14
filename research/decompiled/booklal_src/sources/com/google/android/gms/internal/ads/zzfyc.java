package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.util.Log;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzfyc {
    final /* synthetic */ zzfyd zza;
    private final byte[] zzb;
    private int zzc;
    private int zzd;

    public /* synthetic */ zzfyc(zzfyd zzfydVar, byte[] bArr, byte[] bArr2) {
        Objects.requireNonNull(zzfydVar);
        this.zza = zzfydVar;
        this.zzb = bArr;
    }

    public final synchronized void zza() {
        try {
            zzfyd zzfydVar = this.zza;
            if (zzfydVar.zzb) {
                zzfyg zzfygVar = zzfydVar.zza;
                zzfygVar.zzg(this.zzb);
                zzfygVar.zzh(this.zzc);
                zzfygVar.zzi(this.zzd);
                zzfygVar.zzf(null);
                zzfygVar.zze();
            }
        } catch (RemoteException e5) {
            Log.d("GASS", "Clearcut log failed", e5);
        }
    }

    public final zzfyc zzb(int i) {
        this.zzc = i;
        return this;
    }

    public final zzfyc zzc(int i) {
        this.zzd = i;
        return this;
    }
}
