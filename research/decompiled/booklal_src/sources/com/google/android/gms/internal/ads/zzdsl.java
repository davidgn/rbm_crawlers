package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
final /* synthetic */ class zzdsl implements zzgsa {
    static final /* synthetic */ zzdsl zza = new zzdsl();

    private /* synthetic */ zzdsl() {
    }

    @Override // com.google.android.gms.internal.ads.zzgsa
    public final /* synthetic */ Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (zzdsj zzdsjVar : (List) obj) {
            if (zzdsjVar != null) {
                arrayList.add(zzdsjVar);
            }
        }
        return arrayList;
    }
}
