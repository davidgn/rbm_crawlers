package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public final class zzaaz {
    private final CopyOnWriteArrayList zza = new CopyOnWriteArrayList();

    public final void zza(Handler handler, zzaba zzabaVar) {
        zzb(zzabaVar);
        this.zza.add(new zzaay(handler, zzabaVar));
    }

    public final void zzb(zzaba zzabaVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.zza;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zzaay zzaayVar = (zzaay) it.next();
            if (zzaayVar.zzc() == zzabaVar) {
                zzaayVar.zza();
                copyOnWriteArrayList.remove(zzaayVar);
            }
        }
    }

    public final void zzc(final int i, final long j5, final long j6) {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            final zzaay zzaayVar = (zzaay) it.next();
            if (!zzaayVar.zzd()) {
                zzaayVar.zzb().post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaax
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzaay.this.zzc().zzX(i, j5, j6);
                    }
                });
            }
        }
    }
}
