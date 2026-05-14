package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class zzbco {
    private final zzbbc zza;
    private final String zzb;
    private final String zzc;
    private final Class[] zze;
    private volatile Method zzd = null;
    private final CountDownLatch zzf = new CountDownLatch(1);

    public zzbco(zzbbc zzbbcVar, String str, String str2, Class... clsArr) {
        this.zza = zzbbcVar;
        this.zzb = str;
        this.zzc = str2;
        this.zze = clsArr;
        zzbbcVar.zzd().submit(new zzbcn(this));
    }

    private final String zzc(byte[] bArr, String str) {
        return new String(this.zza.zzf().zzb(bArr, str), "UTF-8");
    }

    public final Method zza() {
        if (this.zzd != null) {
            return this.zzd;
        }
        try {
            if (this.zzf.await(2L, TimeUnit.SECONDS)) {
                return this.zzd;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }

    public final /* synthetic */ void zzb() {
        try {
            zzbbc zzbbcVar = this.zza;
            Class<?> loadClass = zzbbcVar.zze().loadClass(zzc(zzbbcVar.zzg(), this.zzb));
            if (loadClass != null) {
                this.zzd = loadClass.getMethod(zzc(zzbbcVar.zzg(), this.zzc), this.zze);
            }
        } catch (zzbag | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException unused) {
        } catch (Throwable th) {
            this.zzf.countDown();
            throw th;
        }
        this.zzf.countDown();
    }
}
