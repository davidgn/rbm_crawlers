package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class zzfq {
    private final zzfp zza;
    private final zzdy zzb;
    private final zzdy zzc;
    private boolean zzd;
    private boolean zze;

    public zzfq(Context context, Looper looper, zzdo zzdoVar) {
        this.zza = new zzfp(context.getApplicationContext());
        this.zzb = zzdoVar.zzd(looper, null);
        this.zzc = zzdoVar.zzd(Looper.getMainLooper(), null);
    }

    private final void zzg(final boolean z4, final boolean z5) {
        if (zzh(z4, z5)) {
            this.zzb.zzm(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfm
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfq.this.zze(z4, z5);
                }
            });
            return;
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        this.zzc.zzn(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfn
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzfq.this.zzc(atomicBoolean);
            }
        }, 1000L);
        this.zzb.zzm(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfl
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzfq.this.zzd(atomicBoolean, z4, z5);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzh(boolean z4, boolean z5) {
        return z4 && z5;
    }

    public final void zza(boolean z4) {
        if (this.zzd == z4) {
            return;
        }
        this.zzd = z4;
        zzg(z4, this.zze);
    }

    public final void zzb(boolean z4) {
        if (this.zze == z4) {
            return;
        }
        this.zze = z4;
        if (this.zzd) {
            zzg(true, z4);
        }
    }

    public final /* synthetic */ void zzc(final AtomicBoolean atomicBoolean) {
        if (atomicBoolean.get()) {
            final zzfp zzfpVar = this.zza;
            new Thread(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfo
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfp.this.zza(atomicBoolean);
                }
            }, "ExoPlayer:WakeLockManager").start();
        }
    }

    public final /* synthetic */ void zzd(AtomicBoolean atomicBoolean, boolean z4, boolean z5) {
        atomicBoolean.set(false);
        this.zza.zzb(z4, z5);
    }

    public final /* synthetic */ void zze(boolean z4, boolean z5) {
        this.zza.zzb(z4, z5);
    }
}
