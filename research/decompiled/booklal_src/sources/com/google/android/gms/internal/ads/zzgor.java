package com.google.android.gms.internal.ads;

import N2.o;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.view.View;
import java.util.Map;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgor implements zzgoe, zzged {
    private final Context zza;
    private final ExecutorService zzb;
    private NetworkCapabilities zzc = null;

    public zzgor(Context context, ExecutorService executorService) {
        this.zza = context;
        this.zzb = executorService;
    }

    @Override // com.google.android.gms.internal.ads.zzged
    public final o zza() {
        return zzhav.zze(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgoq
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzgor.this.zze();
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzgoe
    public final void zzb(Map map) {
        NetworkCapabilities networkCapabilities;
        long j5;
        synchronized (this) {
            networkCapabilities = this.zzc;
        }
        map.put("ntc", networkCapabilities);
        synchronized (this) {
            try {
                NetworkCapabilities networkCapabilities2 = this.zzc;
                if (networkCapabilities2 != null) {
                    if (networkCapabilities2.hasTransport(4)) {
                        j5 = 2;
                    } else if (this.zzc.hasTransport(1)) {
                        j5 = 1;
                    } else if (this.zzc.hasTransport(0)) {
                        j5 = 0;
                    }
                }
                j5 = -1;
            } finally {
            }
        }
        map.put("nt", Long.valueOf(j5));
    }

    @Override // com.google.android.gms.internal.ads.zzgoe
    public final void zzc(Map map, Context context, View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzgoe
    public final void zzd(Map map) {
    }

    public final /* synthetic */ void zze() {
        zzgop zzgopVar = new zzgop(this);
        try {
            Object systemService = this.zza.getSystemService("connectivity");
            if (systemService == null) {
                throw null;
            }
            ((ConnectivityManager) systemService).registerDefaultNetworkCallback(zzgopVar);
        } catch (Throwable unused) {
        }
    }

    public final /* synthetic */ void zzf(NetworkCapabilities networkCapabilities) {
        this.zzc = networkCapabilities;
    }
}
