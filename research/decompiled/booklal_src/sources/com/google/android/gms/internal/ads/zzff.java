package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class zzff implements zzdy {
    private static final List zza = new ArrayList(50);
    private final Handler zzb;

    public zzff(Handler handler) {
        this.zzb = handler;
    }

    public static /* synthetic */ void zzo(zzfe zzfeVar) {
        List list = zza;
        synchronized (list) {
            try {
                if (list.size() < 50) {
                    list.add(zzfeVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static zzfe zzp() {
        zzfe zzfeVar;
        List list = zza;
        synchronized (list) {
            try {
                zzfeVar = list.isEmpty() ? new zzfe(null) : (zzfe) list.remove(list.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final Looper zza() {
        return this.zzb.getLooper();
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final boolean zzb(int i) {
        return this.zzb.hasMessages(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final zzdx zzc(int i) {
        Handler handler = this.zzb;
        zzfe zzp = zzp();
        zzp.zzb(handler.obtainMessage(i), this);
        return zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final zzdx zzd(int i, Object obj) {
        Handler handler = this.zzb;
        zzfe zzp = zzp();
        zzp.zzb(handler.obtainMessage(i, obj), this);
        return zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final zzdx zze(int i, int i4, int i5) {
        Handler handler = this.zzb;
        zzfe zzp = zzp();
        zzp.zzb(handler.obtainMessage(i, i4, i5), this);
        return zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final zzdx zzf(int i, int i4, int i5, Object obj) {
        Handler handler = this.zzb;
        zzfe zzp = zzp();
        zzp.zzb(handler.obtainMessage(31, 0, 0, obj), this);
        return zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final boolean zzg(zzdx zzdxVar) {
        return ((zzfe) zzdxVar).zzc(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final boolean zzh(int i) {
        return this.zzb.sendEmptyMessage(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final boolean zzi(int i, int i4) {
        return this.zzb.sendEmptyMessageDelayed(i, i4);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final boolean zzj(int i, long j5) {
        return this.zzb.sendEmptyMessageAtTime(2, j5);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zzk(int i) {
        this.zzb.removeMessages(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zzl(Object obj) {
        this.zzb.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final boolean zzm(Runnable runnable) {
        return this.zzb.post(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final boolean zzn(Runnable runnable, long j5) {
        return this.zzb.postDelayed(runnable, 1000L);
    }
}
