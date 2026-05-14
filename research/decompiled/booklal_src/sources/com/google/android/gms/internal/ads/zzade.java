package com.google.android.gms.internal.ads;

import android.view.Surface;
/* loaded from: classes.dex */
final class zzade {
    public static void zza(Surface surface, float f5) {
        try {
            surface.setFrameRate(f5, f5 == 0.0f ? 0 : 1);
        } catch (IllegalStateException e5) {
            zzef.zzf("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e5);
        }
    }
}
