package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzgop extends ConnectivityManager.NetworkCallback {
    final /* synthetic */ zzgor zza;

    public zzgop(zzgor zzgorVar) {
        Objects.requireNonNull(zzgorVar);
        this.zza = zzgorVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        zzgor zzgorVar = this.zza;
        synchronized (zzgorVar) {
            zzgorVar.zzf(networkCapabilities);
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        zzgor zzgorVar = this.zza;
        synchronized (zzgorVar) {
            zzgorVar.zzf(null);
        }
    }
}
