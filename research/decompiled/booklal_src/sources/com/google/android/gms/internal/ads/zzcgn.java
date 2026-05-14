package com.google.android.gms.internal.ads;

import android.os.Looper;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzcgn implements Runnable {
    public zzcgn(zzcgp zzcgpVar) {
        Objects.requireNonNull(zzcgpVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
