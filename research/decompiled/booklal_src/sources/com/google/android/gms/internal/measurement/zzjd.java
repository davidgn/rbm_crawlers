package com.google.android.gms.internal.measurement;

import e1.i;
/* loaded from: classes2.dex */
public final class zzjd {
    public static Object zza(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(i.a(i, "at index "));
    }

    public static Object[] zzb(Object[] objArr, int i) {
        for (int i4 = 0; i4 < i; i4++) {
            zza(objArr[i4], i4);
        }
        return objArr;
    }
}
