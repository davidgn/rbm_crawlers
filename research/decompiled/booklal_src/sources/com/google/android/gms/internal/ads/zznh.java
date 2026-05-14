package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes.dex */
public final class zznh {
    private final zzs zza;
    private final SparseArray zzb;

    public zznh(zzs zzsVar, SparseArray sparseArray) {
        this.zza = zzsVar;
        SparseArray sparseArray2 = new SparseArray(zzsVar.zzb());
        for (int i = 0; i < zzsVar.zzb(); i++) {
            int zzc = zzsVar.zzc(i);
            zzng zzngVar = (zzng) sparseArray.get(zzc);
            zzngVar.getClass();
            sparseArray2.append(zzc, zzngVar);
        }
        this.zzb = sparseArray2;
    }

    public final zzng zza(int i) {
        zzng zzngVar = (zzng) this.zzb.get(i);
        zzngVar.getClass();
        return zzngVar;
    }

    public final boolean zzb(int i) {
        return this.zza.zza(i);
    }

    public final int zzc() {
        return this.zza.zzb();
    }

    public final int zzd(int i) {
        return this.zza.zzc(i);
    }
}
