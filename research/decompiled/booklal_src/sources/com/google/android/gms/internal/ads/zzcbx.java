package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes.dex */
public final class zzcbx implements RewardItem {
    private final zzcbk zza;

    public zzcbx(zzcbk zzcbkVar) {
        this.zza = zzcbkVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        zzcbk zzcbkVar = this.zza;
        if (zzcbkVar != null) {
            try {
                return zzcbkVar.zzf();
            } catch (RemoteException e5) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not forward getAmount to RewardItem", e5);
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        zzcbk zzcbkVar = this.zza;
        if (zzcbkVar != null) {
            try {
                return zzcbkVar.zze();
            } catch (RemoteException e5) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not forward getType to RewardItem", e5);
            }
        }
        return null;
    }
}
