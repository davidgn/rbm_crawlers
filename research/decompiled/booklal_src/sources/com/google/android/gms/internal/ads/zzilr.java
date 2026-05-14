package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes.dex */
public final class zzilr {
    public static List zza(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }

    public static HashSet zzb(int i) {
        return new HashSet(zzd(i));
    }

    public static LinkedHashMap zzc(int i) {
        return new LinkedHashMap(zzd(i));
    }

    private static int zzd(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }
}
