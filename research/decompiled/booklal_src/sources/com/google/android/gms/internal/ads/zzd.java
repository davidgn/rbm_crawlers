package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.os.Build;
/* loaded from: classes.dex */
public final class zzd {
    public static final zzd zza = new zzd(0, 0, 1, 1, 0, false, true, null);
    private AudioAttributes zzb;

    static {
        String str = zzfk.zza;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
    }

    public /* synthetic */ zzd(int i, int i4, int i5, int i6, int i7, boolean z4, boolean z5, byte[] bArr) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzd.class != obj.getClass()) {
            return false;
        }
        zzd zzdVar = (zzd) obj;
        return true;
    }

    public final int hashCode() {
        return -436042064;
    }

    public final AudioAttributes zza() {
        if (this.zzb == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(0).setFlags(0).setUsage(1);
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                usage.setAllowedCapturePolicy(1);
                usage.setHapticChannelsMuted(true);
            }
            if (i >= 32) {
                usage.setSpatializationBehavior(0);
                usage.setIsContentSpatialized(false);
            }
            this.zzb = usage.build();
        }
        return this.zzb;
    }
}
