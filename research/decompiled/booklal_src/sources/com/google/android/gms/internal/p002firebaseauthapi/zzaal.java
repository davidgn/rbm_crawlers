package com.google.android.gms.internal.p002firebaseauthapi;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaal  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzaal {
    private static Boolean zza;

    public static boolean zza(Context context) {
        if (zza == null) {
            int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            boolean z4 = true;
            if (isGooglePlayServicesAvailable != 0 && isGooglePlayServicesAvailable != 2) {
                z4 = false;
            }
            zza = Boolean.valueOf(z4);
        }
        return zza.booleanValue();
    }
}
