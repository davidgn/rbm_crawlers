package com.google.android.gms.internal.location;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2.dex */
public final class zzbm {
    public static int zza(int i, int i4, @NullableDecl String str) {
        String zza;
        if (i < 0 || i >= i4) {
            if (i < 0) {
                zza = zzbn.zza("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
            } else if (i4 < 0) {
                StringBuilder sb = new StringBuilder(26);
                sb.append("negative size: ");
                sb.append(i4);
                throw new IllegalArgumentException(sb.toString());
            } else {
                zza = zzbn.zza("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i4));
            }
            throw new IndexOutOfBoundsException(zza);
        }
        return i;
    }

    public static int zzb(int i, int i4, @NullableDecl String str) {
        if (i < 0 || i > i4) {
            throw new IndexOutOfBoundsException(zzd(i, i4, FirebaseAnalytics.Param.INDEX));
        }
        return i;
    }

    public static void zzc(int i, int i4, int i5) {
        if (i < 0 || i4 < i || i4 > i5) {
            throw new IndexOutOfBoundsException((i < 0 || i > i5) ? zzd(i, i5, "start index") : (i4 < 0 || i4 > i5) ? zzd(i4, i5, "end index") : zzbn.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i4), Integer.valueOf(i)));
        }
    }

    private static String zzd(int i, int i4, @NullableDecl String str) {
        if (i < 0) {
            return zzbn.zza("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i4 >= 0) {
            return zzbn.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i4));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i4);
        throw new IllegalArgumentException(sb.toString());
    }
}
