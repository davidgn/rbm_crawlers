package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes.dex */
final class zzgwb extends zzgtk {
    final /* synthetic */ Iterator zza;
    final /* synthetic */ zzgsk zzb;

    public zzgwb(Iterator it, zzgsk zzgskVar) {
        this.zza = it;
        this.zzb = zzgskVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgtk
    public final Object zza() {
        zzgsk zzgskVar;
        Object next;
        do {
            Iterator it = this.zza;
            if (!it.hasNext()) {
                zzb();
                return null;
            }
            zzgskVar = this.zzb;
            next = it.next();
        } while (!zzgskVar.zza(next));
        return next;
    }
}
