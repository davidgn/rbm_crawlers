package com.google.android.recaptcha.internal;

import java.util.List;
/* loaded from: classes2.dex */
final class zzhk extends zzhm {
    public /* synthetic */ zzhk(zzhj zzhjVar) {
        super(null);
    }

    @Override // com.google.android.recaptcha.internal.zzhm
    public final List zza(Object obj, long j5) {
        zzgv zzgvVar = (zzgv) zzjp.zzf(obj, j5);
        if (zzgvVar.zzc()) {
            return zzgvVar;
        }
        int size = zzgvVar.size();
        zzgv zzd = zzgvVar.zzd(size == 0 ? 10 : size + size);
        zzjp.zzs(obj, j5, zzd);
        return zzd;
    }

    @Override // com.google.android.recaptcha.internal.zzhm
    public final void zzb(Object obj, long j5) {
        ((zzgv) zzjp.zzf(obj, j5)).zzb();
    }

    @Override // com.google.android.recaptcha.internal.zzhm
    public final void zzc(Object obj, Object obj2, long j5) {
        zzgv zzgvVar = (zzgv) zzjp.zzf(obj, j5);
        zzgv zzgvVar2 = (zzgv) zzjp.zzf(obj2, j5);
        int size = zzgvVar.size();
        int size2 = zzgvVar2.size();
        if (size > 0 && size2 > 0) {
            if (!zzgvVar.zzc()) {
                zzgvVar = zzgvVar.zzd(size2 + size);
            }
            zzgvVar.addAll(zzgvVar2);
        }
        if (size > 0) {
            zzgvVar2 = zzgvVar;
        }
        zzjp.zzs(obj, j5, zzgvVar2);
    }

    private zzhk() {
        super(null);
    }
}
