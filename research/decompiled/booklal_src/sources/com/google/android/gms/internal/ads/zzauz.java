package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes.dex */
final class zzauz implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        int length;
        zzava zzavaVar = (zzava) obj;
        zzava zzavaVar2 = (zzava) obj2;
        int i = 0;
        int i4 = 0;
        while (true) {
            length = zzavaVar.zza.length;
            if (i >= length || i4 >= zzavaVar2.zza.length) {
                break;
            }
            int compare = Integer.compare(zzava.zzg(zzavaVar.zzb(i)), zzava.zzg(zzavaVar2.zzb(i4)));
            if (compare != 0) {
                return compare;
            }
            i++;
            i4++;
        }
        return Integer.compare(length, zzavaVar2.zza.length);
    }
}
