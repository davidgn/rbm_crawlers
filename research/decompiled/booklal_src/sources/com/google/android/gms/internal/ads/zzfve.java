package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.content.Context;
/* loaded from: classes.dex */
public final class zzfve {
    private static UiModeManager zza;

    public static void zza(Context context) {
        if (context != null) {
            zza = (UiModeManager) context.getSystemService("uimode");
        }
    }

    public static zzftr zzb() {
        UiModeManager uiModeManager = zza;
        if (uiModeManager != null) {
            int currentModeType = uiModeManager.getCurrentModeType();
            return currentModeType != 1 ? currentModeType != 4 ? zzftr.OTHER : zzftr.CTV : zzftr.MOBILE;
        }
        return zzftr.OTHER;
    }
}
