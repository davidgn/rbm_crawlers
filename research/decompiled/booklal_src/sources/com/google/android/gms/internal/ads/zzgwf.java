package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class zzgwf {
    public static Object zza(Iterator it) {
        if (it.hasNext()) {
            Object next = it.next();
            it.remove();
            return next;
        }
        return null;
    }

    public static void zzb(Iterator it) {
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }
}
