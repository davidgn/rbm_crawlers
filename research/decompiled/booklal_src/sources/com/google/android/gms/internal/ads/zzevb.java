package com.google.android.gms.internal.ads;

import com.google.android.gms.appset.AppSetIdInfo;
/* loaded from: classes.dex */
final /* synthetic */ class zzevb implements zzgsa {
    static final /* synthetic */ zzevb zza = new zzevb();

    private /* synthetic */ zzevb() {
    }

    @Override // com.google.android.gms.internal.ads.zzgsa
    public final /* synthetic */ Object apply(Object obj) {
        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
        return new zzevd(appSetIdInfo.getId(), appSetIdInfo.getScope());
    }
}
