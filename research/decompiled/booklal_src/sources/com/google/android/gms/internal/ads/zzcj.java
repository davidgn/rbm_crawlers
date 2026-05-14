package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Looper;
/* loaded from: classes.dex */
public final class zzcj {
    private static AudioManager zza;

    public static synchronized AudioManager zza(Context context) {
        synchronized (zzcj.class) {
            try {
                final Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    zza = null;
                }
                AudioManager audioManager = zza;
                if (audioManager != null) {
                    return audioManager;
                }
                Looper myLooper = Looper.myLooper();
                if (myLooper != null && myLooper != Looper.getMainLooper()) {
                    final zzdr zzdrVar = new zzdr(zzdo.zza);
                    zzdh.zza().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzci
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzcj.zzb(applicationContext, zzdrVar);
                        }
                    });
                    zzdrVar.zzd();
                    AudioManager audioManager2 = zza;
                    if (audioManager2 != null) {
                        return audioManager2;
                    }
                    throw null;
                }
                AudioManager audioManager3 = (AudioManager) applicationContext.getSystemService("audio");
                zza = audioManager3;
                if (audioManager3 != null) {
                    return audioManager3;
                }
                throw null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void zzb(Context context, zzdr zzdrVar) {
        zza = (AudioManager) context.getSystemService("audio");
        zzdrVar.zza();
    }
}
