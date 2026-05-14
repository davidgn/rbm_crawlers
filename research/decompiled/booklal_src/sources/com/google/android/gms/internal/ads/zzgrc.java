package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgrc implements ServiceConnection {
    final /* synthetic */ zzgri zza;

    public /* synthetic */ zzgrc(zzgri zzgriVar, byte[] bArr) {
        Objects.requireNonNull(zzgriVar);
        this.zza = zzgriVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        zzgri zzgriVar = this.zza;
        zzgriVar.zzi().zza("LmdServiceConnectionManager.onServiceConnected(%s)", componentName);
        zzgriVar.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgrb
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                IInterface zzm;
                zzgpm zzb = zzgpl.zzb(iBinder);
                zzgrc zzgrcVar = zzgrc.this;
                zzgri zzgriVar2 = zzgrcVar.zza;
                zzgriVar2.zzn(zzb);
                zzgriVar2.zzi().zza("linkToDeath", new Object[0]);
                try {
                    zzm = zzgriVar2.zzm();
                } catch (RemoteException e5) {
                    zzgrcVar.zza.zzi().zzd(e5, "linkToDeath failed", new Object[0]);
                }
                if (zzm == null) {
                    throw null;
                }
                zzm.asBinder().linkToDeath(zzgriVar2.zzl(), 0);
                zzgri zzgriVar3 = zzgrcVar.zza;
                zzgriVar3.zzk(false);
                synchronized (zzgriVar3.zzj()) {
                    try {
                        for (Runnable runnable : zzgriVar3.zzj()) {
                            runnable.run();
                        }
                        zzgriVar3.zzj().clear();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzgri zzgriVar = this.zza;
        zzgriVar.zzi().zza("LmdServiceConnectionManager.onServiceDisconnected(%s)", componentName);
        zzgriVar.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgra
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzgri zzgriVar2 = zzgrc.this.zza;
                zzgriVar2.zzi().zza("unlinkToDeath", new Object[0]);
                IInterface zzm = zzgriVar2.zzm();
                zzm.getClass();
                zzm.asBinder().unlinkToDeath(zzgriVar2.zzl(), 0);
                zzgriVar2.zzn(null);
                zzgriVar2.zzk(false);
            }
        });
    }
}
