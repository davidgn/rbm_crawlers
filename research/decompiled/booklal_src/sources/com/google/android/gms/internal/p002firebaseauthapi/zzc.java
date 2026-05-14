package com.google.android.gms.internal.p002firebaseauthapi;

import android.os.Handler;
import android.os.Looper;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzc  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzc extends Handler {
    private final Looper zza;

    public zzc() {
        this.zza = Looper.getMainLooper();
    }

    public zzc(Looper looper) {
        super(looper);
        this.zza = Looper.getMainLooper();
    }
}
