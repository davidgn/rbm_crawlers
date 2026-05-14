package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes.dex */
final class zzayx implements Runnable {
    private zzayx() {
        throw null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            zzayy.zzf(MessageDigest.getInstance("MD5"));
            countDownLatch = zzayy.zzb;
        } catch (NoSuchAlgorithmException unused) {
            countDownLatch = zzayy.zzb;
        } catch (Throwable th) {
            zzayy.zzb.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }

    public /* synthetic */ zzayx(byte[] bArr) {
    }
}
