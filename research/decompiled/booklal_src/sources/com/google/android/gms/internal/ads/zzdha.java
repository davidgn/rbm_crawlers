package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.Set;
/* loaded from: classes.dex */
public final class zzdha extends zzdhu implements zzbnn {
    public zzdha(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final synchronized void zzb(final String str, final String str2) {
        zzs(new zzdht() { // from class: com.google.android.gms.internal.ads.zzdgz
            @Override // com.google.android.gms.internal.ads.zzdht
            public final /* synthetic */ void zza(Object obj) {
                ((AppEventListener) obj).onAppEvent(str, str2);
            }
        });
    }
}
