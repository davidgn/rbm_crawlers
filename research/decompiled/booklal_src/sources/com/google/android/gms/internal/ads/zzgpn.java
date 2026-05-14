package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class zzgpn extends zzbdk implements zzgpo {
    public zzgpn() {
        super("com.google.android.play.core.lmd.protocol.ILmdOverlayServiceListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final boolean zzdd(int i, Parcel parcel, Parcel parcel2, int i4) {
        if (i == 1) {
            zzbdl.zzh(parcel);
            zzb((Bundle) zzbdl.zzb(parcel, Bundle.CREATOR));
            return true;
        }
        return false;
    }
}
