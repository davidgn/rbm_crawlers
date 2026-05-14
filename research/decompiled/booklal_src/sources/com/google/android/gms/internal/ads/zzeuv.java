package com.google.android.gms.internal.ads;

import java.util.ArrayList;
/* loaded from: classes.dex */
final /* synthetic */ class zzeuv implements zzgsa {
    static final /* synthetic */ zzeuv zza = new zzeuv();

    private /* synthetic */ zzeuv() {
    }

    @Override // com.google.android.gms.internal.ads.zzgsa
    public final /* synthetic */ Object apply(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        if (true == arrayList.isEmpty()) {
            arrayList = null;
        }
        return new zzeux(arrayList);
    }
}
