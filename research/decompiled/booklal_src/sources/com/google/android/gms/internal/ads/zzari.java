package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzari implements ServiceConnection {
    final /* synthetic */ zzarj zza;
    private final zzark zzb;

    public /* synthetic */ zzari(zzarj zzarjVar, zzark zzarkVar, byte[] bArr) {
        Objects.requireNonNull(zzarjVar);
        this.zza = zzarjVar;
        this.zzb = zzarkVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzarm.zza("InstallReferrerClient", "Install Referrer service connected.");
        zzarj zzarjVar = this.zza;
        zzarjVar.zzf(zzbdn.zzb(iBinder));
        zzarjVar.zze(2);
        this.zzb.zza(0);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzarm.zzb("InstallReferrerClient", "Install Referrer service disconnected.");
        zzarj zzarjVar = this.zza;
        zzarjVar.zzf(null);
        zzarjVar.zze(0);
    }
}
