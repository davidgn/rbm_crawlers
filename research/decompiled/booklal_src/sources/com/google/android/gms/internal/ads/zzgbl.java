package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes.dex */
public final class zzgbl extends zzgbk {
    private static zzgbl zzd;

    private zzgbl(Context context) {
        super(context, "paidv1_id", "paidv1_creation_time", "PaidV1LifecycleImpl");
    }

    public static final zzgbl zzh(Context context) {
        zzgbl zzgblVar;
        synchronized (zzgbl.class) {
            try {
                if (zzd == null) {
                    zzd = new zzgbl(context);
                }
                zzgblVar = zzd;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzgblVar;
    }

    public final zzgbh zzi(long j5, boolean z4) {
        zzgbh zza;
        synchronized (zzgbl.class) {
            zza = zza(null, null, j5, z4);
        }
        return zza;
    }

    public final zzgbh zzj(String str, String str2, long j5, boolean z4) {
        zzgbh zza;
        synchronized (zzgbl.class) {
            zza = zza(str, str2, j5, z4);
        }
        return zza;
    }

    public final void zzk() {
        synchronized (zzgbl.class) {
            zzc(false);
        }
    }

    public final void zzl() {
        synchronized (zzgbl.class) {
            zzc(true);
        }
    }
}
