package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public final class zztr {
    public final int zza;
    public final zzwt zzb;
    private final CopyOnWriteArrayList zzc;

    private zztr(CopyOnWriteArrayList copyOnWriteArrayList, int i, zzwt zzwtVar) {
        this.zzc = copyOnWriteArrayList;
        this.zza = 0;
        this.zzb = zzwtVar;
    }

    public final zztr zza(int i, zzwt zzwtVar) {
        return new zztr(this.zzc, 0, zzwtVar);
    }

    public final void zzb(Handler handler, zzts zztsVar) {
        this.zzc.add(new zztq(handler, zztsVar));
    }

    public final void zzc(zzts zztsVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.zzc;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zztq zztqVar = (zztq) it.next();
            if (zztqVar.zza == zztsVar) {
                copyOnWriteArrayList.remove(zztqVar);
            }
        }
    }

    public zztr() {
        this(new CopyOnWriteArrayList(), 0, null);
    }
}
