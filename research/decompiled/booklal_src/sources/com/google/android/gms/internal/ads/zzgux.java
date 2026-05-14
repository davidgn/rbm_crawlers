package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes.dex */
final class zzgux extends zzguz {
    public zzgux() {
        super(null);
    }

    public static final zzguz zzf(int i) {
        zzguz zzguzVar;
        zzguz zzguzVar2;
        zzguz zzguzVar3;
        if (i < 0) {
            zzguzVar3 = zzguz.zzb;
            return zzguzVar3;
        } else if (i > 0) {
            zzguzVar2 = zzguz.zzc;
            return zzguzVar2;
        } else {
            zzguzVar = zzguz.zza;
            return zzguzVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzguz
    public final zzguz zza(Object obj, Object obj2, Comparator comparator) {
        return zzf(comparator.compare(obj, obj2));
    }

    @Override // com.google.android.gms.internal.ads.zzguz
    public final zzguz zzb(int i, int i4) {
        return zzf(Integer.compare(i, i4));
    }

    @Override // com.google.android.gms.internal.ads.zzguz
    public final zzguz zzc(boolean z4, boolean z5) {
        return zzf(Boolean.compare(z5, z4));
    }

    @Override // com.google.android.gms.internal.ads.zzguz
    public final zzguz zzd(boolean z4, boolean z5) {
        return zzf(Boolean.compare(z4, z5));
    }

    @Override // com.google.android.gms.internal.ads.zzguz
    public final int zze() {
        return 0;
    }
}
