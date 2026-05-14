package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbdk;
import com.google.android.gms.internal.ads.zzbdl;
/* loaded from: classes.dex */
public abstract class zzec extends zzbdk implements zzed {
    public zzec() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final boolean zzdd(int i, Parcel parcel, Parcel parcel2, int i4) {
        if (i == 1) {
            zze();
        } else if (i == 2) {
            zzf();
        } else if (i == 3) {
            zzg();
        } else if (i == 4) {
            zzh();
        } else if (i != 5) {
            return false;
        } else {
            boolean zza = zzbdl.zza(parcel);
            zzbdl.zzh(parcel);
            zzi(zza);
        }
        parcel2.writeNoException();
        return true;
    }
}
