package com.google.android.gms.internal.common;

import C.a;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes.dex */
public final class zzr {
    public static void zza(boolean z4) {
        if (!z4) {
            throw new IllegalStateException();
        }
    }

    public static int zzb(int i, int i4, String str) {
        String zza;
        if (i < 0 || i >= i4) {
            if (i < 0) {
                zza = zzx.zza("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
            } else if (i4 < 0) {
                throw new IllegalArgumentException(a.i(i4, "negative size: ", new StringBuilder(String.valueOf(i4).length() + 15)));
            } else {
                zza = zzx.zza("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i4));
            }
            throw new IndexOutOfBoundsException(zza);
        }
        return i;
    }

    public static int zzc(int i, int i4, String str) {
        if (i < 0 || i > i4) {
            throw new IndexOutOfBoundsException(zze(i, i4, FirebaseAnalytics.Param.INDEX));
        }
        return i;
    }

    public static void zzd(int i, int i4, int i5) {
        if (i < 0 || i4 < i || i4 > i5) {
            throw new IndexOutOfBoundsException((i < 0 || i > i5) ? zze(i, i5, "start index") : (i4 < 0 || i4 > i5) ? zze(i4, i5, "end index") : zzx.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i4), Integer.valueOf(i)));
        }
    }

    private static String zze(int i, int i4, String str) {
        if (i < 0) {
            return zzx.zza("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i4 >= 0) {
            return zzx.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i4));
        }
        throw new IllegalArgumentException(a.i(i4, "negative size: ", new StringBuilder(String.valueOf(i4).length() + 15)));
    }
}
