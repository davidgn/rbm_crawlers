package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzfg {
    private long[] zza;
    private Object[] zzb;
    private int zzc;
    private int zzd;

    public zzfg() {
        throw null;
    }

    private final Object zzf() {
        zzgsj.zzi(this.zzd > 0);
        Object[] objArr = this.zzb;
        int i = this.zzc;
        Object obj = objArr[i];
        objArr[i] = null;
        this.zzc = (i + 1) % objArr.length;
        this.zzd--;
        return obj;
    }

    public final synchronized void zza(long j5, Object obj) {
        try {
            int i = this.zzd;
            if (i > 0) {
                if (j5 <= this.zza[((this.zzc + i) - 1) % this.zzb.length]) {
                    zzb();
                }
            }
            int length = this.zzb.length;
            if (this.zzd >= length) {
                int i4 = length + length;
                long[] jArr = new long[i4];
                Object[] objArr = new Object[i4];
                int i5 = this.zzc;
                int i6 = length - i5;
                System.arraycopy(this.zza, i5, jArr, 0, i6);
                System.arraycopy(this.zzb, this.zzc, objArr, 0, i6);
                int i7 = this.zzc;
                if (i7 > 0) {
                    System.arraycopy(this.zza, 0, jArr, i6, i7);
                    System.arraycopy(this.zzb, 0, objArr, i6, this.zzc);
                }
                this.zza = jArr;
                this.zzb = objArr;
                this.zzc = 0;
            }
            int i8 = this.zzc;
            int i9 = this.zzd;
            Object[] objArr2 = this.zzb;
            int length2 = (i8 + i9) % objArr2.length;
            this.zza[length2] = j5;
            objArr2[length2] = obj;
            this.zzd = i9 + 1;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzb() {
        this.zzc = 0;
        this.zzd = 0;
        Arrays.fill(this.zzb, (Object) null);
    }

    public final synchronized int zzc() {
        return this.zzd;
    }

    public final synchronized Object zzd() {
        if (this.zzd == 0) {
            return null;
        }
        return zzf();
    }

    public final synchronized Object zze(long j5) {
        Object obj;
        obj = null;
        while (this.zzd > 0 && j5 - this.zza[this.zzc] >= 0) {
            obj = zzf();
        }
        return obj;
    }

    public zzfg(int i) {
        this.zza = new long[10];
        this.zzb = new Object[10];
    }
}
