package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
final /* synthetic */ class zzdsg implements zzgsa {
    static final /* synthetic */ zzdsg zza = new zzdsg();

    private /* synthetic */ zzdsg() {
    }

    @Override // com.google.android.gms.internal.ads.zzgsa
    public final /* synthetic */ Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (zzbku zzbkuVar : (List) obj) {
            if (zzbkuVar != null) {
                arrayList.add(zzbkuVar);
            }
        }
        return arrayList;
    }
}
