package com.google.android.recaptcha.internal;
/* loaded from: classes2.dex */
public final class zzdi {
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
            throw new IllegalArgumentException(zzdl.zza(str, Character.valueOf(c5)));
        }
    }

    public static void zzd(int i, int i4, int i5) {
        if (i < 0 || i4 < i || i4 > i5) {
            throw new IndexOutOfBoundsException((i < 0 || i > i5) ? zzf(i, i5, "start index") : (i4 < 0 || i4 > i5) ? zzf(i4, i5, "end index") : zzdl.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i4), Integer.valueOf(i)));
        }
    }

    public static void zze(boolean z4, Object obj) {
        if (!z4) {
            throw new IllegalStateException((String) obj);
        }
    }

    private static String zzf(int i, int i4, String str) {
        return i < 0 ? zzdl.zza("%s (%s) must not be negative", str, Integer.valueOf(i)) : zzdl.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i4));
    }
}
