package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
/* loaded from: classes.dex */
public final class zzfvi {
    private static int zza = 2;

    public static void zza(Context context) {
        context.registerReceiver(new zzfvh(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
    }

    public static int zzb() {
        if (zzfve.zzb() != zzftr.CTV) {
            return 2;
        }
        return zza;
    }
}
