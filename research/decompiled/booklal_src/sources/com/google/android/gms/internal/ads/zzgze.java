package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzgze implements Serializable {
    private static final zzgze zza = new zzgze(new int[0], 0, 0);
    private final int[] zzb;
    private final int zzc;

    private zzgze(int[] iArr, int i, int i4) {
        this.zzb = iArr;
        this.zzc = i4;
    }

    public static zzgze zza() {
        return zza;
    }

    public static zzgze zzb(int[] iArr) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        return new zzgze(copyOf, 0, copyOf.length);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgze) {
            zzgze zzgzeVar = (zzgze) obj;
            int i = this.zzc;
            if (i == zzgzeVar.zzc) {
                for (int i4 = 0; i4 < i; i4++) {
                    if (zzd(i4) != zzgzeVar.zzd(i4)) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i = 1;
        for (int i4 = 0; i4 < this.zzc; i4++) {
            i = (i * 31) + Integer.hashCode(this.zzb[i4]);
        }
        return i;
    }

    public final String toString() {
        int i = this.zzc;
        if (i != 0) {
            StringBuilder sb = new StringBuilder(i * 5);
            sb.append('[');
            int[] iArr = this.zzb;
            sb.append(iArr[0]);
            for (int i4 = 1; i4 < i; i4++) {
                sb.append(", ");
                sb.append(iArr[i4]);
            }
            sb.append(']');
            return sb.toString();
        }
        return "[]";
    }

    public final int zzc() {
        return this.zzc;
    }

    public final int zzd(int i) {
        zzgsj.zzm(i, this.zzc, FirebaseAnalytics.Param.INDEX);
        return this.zzb[i];
    }
}
