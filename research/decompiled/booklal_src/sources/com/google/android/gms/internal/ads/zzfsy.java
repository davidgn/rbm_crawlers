package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes.dex */
final /* synthetic */ class zzfsy implements Comparator {
    static final /* synthetic */ zzfsy zza = new zzfsy();

    private /* synthetic */ zzfsy() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzfsp zzfspVar = (zzfsp) obj2;
        zzfsp zzfspVar2 = (zzfsp) obj;
        int compare = Double.compare(zzfspVar.zze(), zzfspVar2.zze());
        return compare == 0 ? Long.compare(zzfspVar2.zzd(), zzfspVar.zzd()) : compare;
    }
}
