package com.google.android.gms.internal.p002firebaseauthapi;

import C.a;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzae  reason: invalid package */
/* loaded from: classes2.dex */
final class zzae {
    public static void zza(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=".concat(String.valueOf(obj2)));
        }
        if (obj2 == null) {
            throw new NullPointerException(a.l("null value in entry: ", obj.toString(), "=null"));
        }
    }
}
