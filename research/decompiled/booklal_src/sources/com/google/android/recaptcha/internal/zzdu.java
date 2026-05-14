package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
final class zzdu extends zzdp {
    final /* synthetic */ Iterable zza;
    final /* synthetic */ int zzb;

    public zzdu(Iterable iterable, int i) {
        this.zza = iterable;
        this.zzb = i;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Iterable iterable = this.zza;
        if (iterable instanceof List) {
            List list = (List) iterable;
            return list.subList(Math.min(list.size(), this.zzb), list.size()).iterator();
        }
        Iterator it = iterable.iterator();
        int i = this.zzb;
        it.getClass();
        zzdi.zzb(i >= 0, "numberToAdvance must be nonnegative");
        for (int i4 = 0; i4 < i && it.hasNext(); i4++) {
            it.next();
        }
        return new zzdt(this, it);
    }
}
