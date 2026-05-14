package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.os.Build;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzux {
    private static Boolean zza;

    public static int zza(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i4, double d2) {
        if (Build.VERSION.SDK_INT >= 29) {
            Boolean bool = zza;
            if (bool == null || !bool.booleanValue()) {
                return zzuw.zza(videoCapabilities, i, i4, d2);
            }
            return 0;
        }
        return 0;
    }
}
