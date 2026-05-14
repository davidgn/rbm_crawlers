package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes.dex */
public final class zzabs {
    private static final Comparator zza = zzabr.zza;
    private static final Comparator zzb = zzabq.zza;
    private int zzf;
    private int zzg;
    private int zzh;
    private final zzabp[] zzd = new zzabp[5];
    private final ArrayList zzc = new ArrayList();
    private int zze = -1;

    public zzabs(int i) {
    }

    public final void zza() {
        this.zzc.clear();
        this.zze = -1;
        this.zzf = 0;
        this.zzg = 0;
    }

    public final void zzb(int i, float f5) {
        zzabp zzabpVar;
        if (this.zze != 1) {
            Collections.sort(this.zzc, zza);
            this.zze = 1;
        }
        int i4 = this.zzh;
        if (i4 > 0) {
            zzabp[] zzabpVarArr = this.zzd;
            int i5 = i4 - 1;
            this.zzh = i5;
            zzabpVar = zzabpVarArr[i5];
        } else {
            zzabpVar = new zzabp(null);
        }
        int i6 = this.zzf;
        this.zzf = i6 + 1;
        zzabpVar.zza = i6;
        zzabpVar.zzb = i;
        zzabpVar.zzc = f5;
        ArrayList arrayList = this.zzc;
        arrayList.add(zzabpVar);
        this.zzg += i;
        while (true) {
            int i7 = this.zzg;
            if (i7 <= 2000) {
                return;
            }
            int i8 = i7 - 2000;
            zzabp zzabpVar2 = (zzabp) arrayList.get(0);
            int i9 = zzabpVar2.zzb;
            if (i9 <= i8) {
                this.zzg -= i9;
                arrayList.remove(0);
                int i10 = this.zzh;
                if (i10 < 5) {
                    zzabp[] zzabpVarArr2 = this.zzd;
                    this.zzh = i10 + 1;
                    zzabpVarArr2[i10] = zzabpVar2;
                }
            } else {
                zzabpVar2.zzb = i9 - i8;
                this.zzg -= i8;
            }
        }
    }

    public final float zzc(float f5) {
        int i = 0;
        if (this.zze != 0) {
            Collections.sort(this.zzc, zzb);
            this.zze = 0;
        }
        float f6 = this.zzg;
        int i4 = 0;
        while (true) {
            ArrayList arrayList = this.zzc;
            if (i >= arrayList.size()) {
                if (arrayList.isEmpty()) {
                    return Float.NaN;
                }
                return ((zzabp) arrayList.get(arrayList.size() - 1)).zzc;
            }
            zzabp zzabpVar = (zzabp) arrayList.get(i);
            i4 += zzabpVar.zzb;
            if (i4 >= 0.5f * f6) {
                return zzabpVar.zzc;
            }
            i++;
        }
    }
}
