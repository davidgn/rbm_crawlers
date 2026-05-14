package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes.dex */
public final class zzgbi {
    private static zzgbi zzb;
    final zzgbj zza;

    private zzgbi(Context context) {
        this.zza = zzgbj.zza(context);
    }

    public static final zzgbi zza(Context context) {
        zzgbi zzgbiVar;
        synchronized (zzgbi.class) {
            try {
                if (zzb == null) {
                    zzb = new zzgbi(context);
                }
                zzgbiVar = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzgbiVar;
    }

    public final void zzb(boolean z4) {
        synchronized (zzgbi.class) {
            try {
                zzgbj zzgbjVar = this.zza;
                zzgbjVar.zzb("paidv2_publisher_option", Boolean.valueOf(z4));
                if (!z4) {
                    zzgbjVar.zzf("paidv2_creation_time");
                    zzgbjVar.zzf("paidv2_id");
                    zzgbjVar.zzf("vendor_scoped_gpid_v2_id");
                    zzgbjVar.zzf("vendor_scoped_gpid_v2_creation_time");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzc() {
        boolean zze;
        synchronized (zzgbi.class) {
            zze = this.zza.zze("paidv2_publisher_option", true);
        }
        return zze;
    }

    public final void zzd(boolean z4) {
        synchronized (zzgbi.class) {
            this.zza.zzb("paidv2_user_option", Boolean.valueOf(z4));
        }
    }

    public final boolean zze() {
        boolean zze;
        synchronized (zzgbi.class) {
            zze = this.zza.zze("paidv2_user_option", true);
        }
        return zze;
    }
}
