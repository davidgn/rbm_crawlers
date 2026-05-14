package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes.dex */
final class zzyr {
    private int zza;
    private final SparseArray zzb;
    private final zzds zzc;

    public zzyr() {
        this(zzyq.zza);
    }

    public final Object zza(int i) {
        SparseArray sparseArray;
        if (this.zza == -1) {
            this.zza = 0;
        }
        while (true) {
            int i4 = this.zza;
            if (i4 > 0 && i < this.zzb.keyAt(i4)) {
                this.zza--;
            }
        }
        while (true) {
            int i5 = this.zza;
            sparseArray = this.zzb;
            if (i5 >= sparseArray.size() - 1 || i < sparseArray.keyAt(this.zza + 1)) {
                break;
            }
            this.zza++;
        }
        return sparseArray.valueAt(this.zza);
    }

    public final void zzb(int i, Object obj) {
        if (this.zza == -1) {
            zzgsj.zzi(this.zzb.size() == 0);
            this.zza = 0;
        }
        SparseArray sparseArray = this.zzb;
        if (sparseArray.size() > 0) {
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            zzgsj.zza(i >= keyAt);
            if (keyAt == i) {
                this.zzc.zza(sparseArray.valueAt(sparseArray.size() - 1));
            }
        }
        sparseArray.append(i, obj);
    }

    public final Object zzc() {
        SparseArray sparseArray = this.zzb;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public final void zzd(int i) {
        int i4 = 0;
        while (true) {
            SparseArray sparseArray = this.zzb;
            if (i4 >= sparseArray.size() - 1) {
                return;
            }
            int i5 = i4 + 1;
            if (i < sparseArray.keyAt(i5)) {
                return;
            }
            this.zzc.zza(sparseArray.valueAt(i4));
            sparseArray.removeAt(i4);
            int i6 = this.zza;
            if (i6 > 0) {
                this.zza = i6 - 1;
            }
            i4 = i5;
        }
    }

    public final void zze() {
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.zzb;
            if (i >= sparseArray.size()) {
                this.zza = -1;
                sparseArray.clear();
                return;
            }
            this.zzc.zza(sparseArray.valueAt(i));
            i++;
        }
    }

    public final boolean zzf() {
        return this.zzb.size() == 0;
    }

    public zzyr(zzds zzdsVar) {
        this.zzb = new SparseArray();
        this.zzc = zzdsVar;
        this.zza = -1;
    }
}
