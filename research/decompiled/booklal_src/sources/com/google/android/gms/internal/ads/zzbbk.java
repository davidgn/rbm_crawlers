package com.google.android.gms.internal.ads;

import android.app.AppOpsManager$OnOpActiveChangedListener;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzbbk implements AppOpsManager$OnOpActiveChangedListener {
    final /* synthetic */ zzbbl zza;

    public zzbbk(zzbbl zzbblVar) {
        Objects.requireNonNull(zzbblVar);
        this.zza = zzbblVar;
    }

    public final void onOpActiveChanged(String str, int i, String str2, boolean z4) {
        if (z4) {
            zzbbl zzbblVar = this.zza;
            zzbblVar.zze(System.currentTimeMillis());
            zzbblVar.zzh(true);
            return;
        }
        zzbbl zzbblVar2 = this.zza;
        int i4 = (zzbblVar2.zzf() > 0L ? 1 : (zzbblVar2.zzf() == 0L ? 0 : -1));
        long currentTimeMillis = System.currentTimeMillis();
        if (i4 > 0 && currentTimeMillis >= zzbblVar2.zzf()) {
            zzbblVar2.zzg(currentTimeMillis - zzbblVar2.zzf());
        }
        zzbblVar2.zzh(false);
    }
}
