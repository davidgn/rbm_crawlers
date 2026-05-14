package com.google.android.gms.internal.p002firebaseauthapi;

import java.io.IOException;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafp  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzafp extends IOException {
    public zzafp() {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.");
    }

    public zzafp(String str, Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(String.valueOf(str)), th);
    }

    public zzafp(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
