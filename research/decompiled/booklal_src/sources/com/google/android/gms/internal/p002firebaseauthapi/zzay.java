package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Iterator;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzay  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzay {
    public static int zza(Set set) {
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }
}
