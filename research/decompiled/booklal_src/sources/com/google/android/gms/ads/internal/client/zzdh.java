package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
/* loaded from: classes.dex */
public final class zzdh implements MuteThisAdReason {
    private final String zza;
    private final zzdg zzb;

    public zzdh(zzdg zzdgVar) {
        String str;
        this.zzb = zzdgVar;
        try {
            str = zzdgVar.zze();
        } catch (RemoteException e5) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("", e5);
            str = null;
        }
        this.zza = str;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.zza;
    }

    public final String toString() {
        return this.zza;
    }

    public final zzdg zza() {
        return this.zzb;
    }
}
