package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes.dex */
public final class zzgbn {
    private static zzgbn zzb;
    final zzgbj zza;

    private zzgbn(Context context) {
        this.zza = zzgbj.zza(context);
        zzgbi.zza(context);
    }

    public static final zzgbn zza(Context context) {
        zzgbn zzgbnVar;
        synchronized (zzgbn.class) {
            try {
                if (zzb == null) {
                    zzb = new zzgbn(context);
                }
                zzgbnVar = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzgbnVar;
    }

    public final void zzb(zzgbh zzgbhVar) {
        synchronized (zzgbn.class) {
            zzgbj zzgbjVar = this.zza;
            zzgbjVar.zzf("vendor_scoped_gpid_v2_id");
            zzgbjVar.zzf("vendor_scoped_gpid_v2_creation_time");
        }
    }
}
