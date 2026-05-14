package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzbae extends ConnectivityManager.NetworkCallback {
    final /* synthetic */ zzbaf zza;

    public zzbae(zzbaf zzbafVar) {
        Objects.requireNonNull(zzbafVar);
        this.zza = zzbafVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        synchronized (zzbaf.class) {
            this.zza.zzd(networkCapabilities);
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        synchronized (zzbaf.class) {
            this.zza.zzd(null);
        }
    }
}
