package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.SecureRandom;
/* loaded from: classes.dex */
public final class zzhmt {
    private static final ThreadLocal zza = new zzhms();

    public static byte[] zza(int i) {
        byte[] bArr = new byte[i];
        ((SecureRandom) zza.get()).nextBytes(bArr);
        return bArr;
    }

    public static /* synthetic */ SecureRandom zzb() {
        SecureRandom zzc = zzc();
        zzc.nextLong();
        return zzc;
    }

    private static SecureRandom zzc() {
        Provider zza2 = zzhjw.zza();
        if (zza2 != null) {
            try {
                return SecureRandom.getInstance("SHA1PRNG", zza2);
            } catch (GeneralSecurityException unused) {
            }
        }
        return new SecureRandom();
    }
}
