package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.firebase.analytics.FirebaseAnalytics;
import e1.i;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzu  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzu {
    public static int zza(int i, int i4, String str) {
        String zzb;
        if (i < 0 || i >= i4) {
            if (i < 0) {
                zzb = zzac.zzb("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
            } else if (i4 < 0) {
                throw new IllegalArgumentException(i.a(i4, "negative size: "));
            } else {
                zzb = zzac.zzb("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i4));
            }
            throw new IndexOutOfBoundsException(zzb);
        }
        return i;
    }

    public static int zzb(int i, int i4, String str) {
        if (i < 0 || i > i4) {
            throw new IndexOutOfBoundsException(zzd(i, i4, FirebaseAnalytics.Param.INDEX));
        }
        return i;
    }

    public static void zzc(int i, int i4, int i5) {
        if (i < 0 || i4 < i || i4 > i5) {
            throw new IndexOutOfBoundsException((i < 0 || i > i5) ? zzd(i, i5, "start index") : (i4 < 0 || i4 > i5) ? zzd(i4, i5, "end index") : zzac.zzb("end index (%s) must not be less than start index (%s)", Integer.valueOf(i4), Integer.valueOf(i)));
        }
    }

    private static String zzd(int i, int i4, String str) {
        if (i < 0) {
            return zzac.zzb("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i4 >= 0) {
            return zzac.zzb("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i4));
        }
        throw new IllegalArgumentException(i.a(i4, "negative size: "));
    }
}
