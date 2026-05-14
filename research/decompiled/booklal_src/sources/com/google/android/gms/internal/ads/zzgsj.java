package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes.dex */
public final class zzgsj {
    public static void zza(boolean z4) {
        if (!z4) {
            throw new IllegalArgumentException();
        }
    }

    public static void zzb(boolean z4, Object obj) {
        if (!z4) {
            throw new IllegalArgumentException((String) obj);
        }
    }

    public static void zzc(boolean z4, String str, char c5) {
        if (!z4) {
            throw new IllegalArgumentException(zzgta.zzd(str, Character.valueOf(c5)));
        }
    }

    public static void zzd(boolean z4, String str, int i) {
        if (!z4) {
            throw new IllegalArgumentException(zzgta.zzd(str, Integer.valueOf(i)));
        }
    }

    public static void zze(boolean z4, String str, long j5) {
        if (!z4) {
            throw new IllegalArgumentException(zzgta.zzd(str, Long.valueOf(j5)));
        }
    }

    public static void zzf(boolean z4, String str, Object obj) {
        if (!z4) {
            throw new IllegalArgumentException(zzgta.zzd(str, obj));
        }
    }

    public static void zzg(boolean z4, String str, int i, int i4) {
        if (!z4) {
            throw new IllegalArgumentException(zzgta.zzd(str, Integer.valueOf(i), Integer.valueOf(i4)));
        }
    }

    public static void zzh(boolean z4, String str, Object obj, Object obj2) {
        if (!z4) {
            throw new IllegalArgumentException(zzgta.zzd(str, obj, obj2));
        }
    }

    public static void zzi(boolean z4) {
        if (!z4) {
            throw new IllegalStateException();
        }
    }

    public static void zzj(boolean z4, Object obj) {
        if (!z4) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static Object zzk(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException((String) obj2);
    }

    public static Object zzl(Object obj, String str, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(zzgta.zzd(str, obj2));
    }

    public static int zzm(int i, int i4, String str) {
        String zzd;
        if (i < 0 || i >= i4) {
            if (i < 0) {
                zzd = zzgta.zzd("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
            } else if (i4 < 0) {
                throw new IllegalArgumentException(C.a.i(i4, "negative size: ", new StringBuilder(String.valueOf(i4).length() + 15)));
            } else {
                zzd = zzgta.zzd("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i4));
            }
            throw new IndexOutOfBoundsException(zzd);
        }
        return i;
    }

    public static int zzn(int i, int i4, String str) {
        if (i < 0 || i > i4) {
            throw new IndexOutOfBoundsException(zzp(i, i4, FirebaseAnalytics.Param.INDEX));
        }
        return i;
    }

    public static void zzo(int i, int i4, int i5) {
        if (i < 0 || i4 < i || i4 > i5) {
            throw new IndexOutOfBoundsException((i < 0 || i > i5) ? zzp(i, i5, "start index") : (i4 < 0 || i4 > i5) ? zzp(i4, i5, "end index") : zzgta.zzd("end index (%s) must not be less than start index (%s)", Integer.valueOf(i4), Integer.valueOf(i)));
        }
    }

    private static String zzp(int i, int i4, String str) {
        if (i < 0) {
            return zzgta.zzd("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i4 >= 0) {
            return zzgta.zzd("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i4));
        }
        throw new IllegalArgumentException(C.a.i(i4, "negative size: ", new StringBuilder(String.valueOf(i4).length() + 15)));
    }
}
