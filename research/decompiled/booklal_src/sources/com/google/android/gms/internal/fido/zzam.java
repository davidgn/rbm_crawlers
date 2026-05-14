package com.google.android.gms.internal.fido;

import com.google.firebase.analytics.FirebaseAnalytics;
import e1.i;
/* loaded from: classes.dex */
public final class zzam {
    public static int zza(int i, int i4, String str) {
        String zza;
        if (i < 0 || i >= i4) {
            if (i < 0) {
                zza = zzan.zza("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
            } else if (i4 < 0) {
                throw new IllegalArgumentException(i.a(i4, "negative size: "));
            } else {
                zza = zzan.zza("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i4));
            }
            throw new IndexOutOfBoundsException(zza);
        }
        return i;
    }

    public static int zzb(int i, int i4, String str) {
        if (i < 0 || i > i4) {
            throw new IndexOutOfBoundsException(zzf(i, i4, FirebaseAnalytics.Param.INDEX));
        }
        return i;
    }

    public static void zzc(boolean z4) {
        if (!z4) {
            throw new IllegalArgumentException();
        }
    }

    public static void zzd(boolean z4, String str, char c5) {
        if (!z4) {
            throw new IllegalArgumentException(zzan.zza(str, Character.valueOf(c5)));
        }
    }

    public static void zze(int i, int i4, int i5) {
        if (i < 0 || i4 < i || i4 > i5) {
            throw new IndexOutOfBoundsException((i < 0 || i > i5) ? zzf(i, i5, "start index") : (i4 < 0 || i4 > i5) ? zzf(i4, i5, "end index") : zzan.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i4), Integer.valueOf(i)));
        }
    }

    private static String zzf(int i, int i4, String str) {
        if (i < 0) {
            return zzan.zza("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i4 >= 0) {
            return zzan.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i4));
        }
        throw new IllegalArgumentException(i.a(i4, "negative size: "));
    }
}
