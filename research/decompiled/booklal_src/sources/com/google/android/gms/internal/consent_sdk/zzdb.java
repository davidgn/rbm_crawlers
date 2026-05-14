package com.google.android.gms.internal.consent_sdk;

import android.os.Build;
import com.google.firebase.firestore.BuildConfig;
/* loaded from: classes.dex */
public final class zzdb {
    public static boolean zza(boolean z4) {
        if (Build.VERSION.SDK_INT >= 31) {
            String str = Build.FINGERPRINT;
            return str.contains("generic") || str.contains(BuildConfig.TARGET_BACKEND) || Build.HARDWARE.contains("ranchu");
        }
        return Build.DEVICE.startsWith("generic");
    }
}
