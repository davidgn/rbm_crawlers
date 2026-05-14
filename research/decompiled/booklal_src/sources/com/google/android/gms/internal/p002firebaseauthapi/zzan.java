package com.google.android.gms.internal.p002firebaseauthapi;

import C.a;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzan  reason: invalid package */
/* loaded from: classes2.dex */
final class zzan {
    private final Object zza;
    private final Object zzb;
    private final Object zzc;

    public zzan(Object obj, Object obj2, Object obj3) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = obj3;
    }

    public final IllegalArgumentException zza() {
        String valueOf = String.valueOf(this.zza);
        String valueOf2 = String.valueOf(this.zzb);
        return new IllegalArgumentException(a.q(a.s("Multiple entries with same key: ", valueOf, "=", valueOf2, " and "), String.valueOf(this.zza), "=", String.valueOf(this.zzc)));
    }
}
