package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.i;
import t4.AbstractC0870w;
import t4.InterfaceC0868u;
import t4.Q;
/* loaded from: classes.dex */
public final class zzgaj {
    public static final zzgah zza(final ExecutorService executorService) {
        i.f(executorService, "executorService");
        return new zzgah() { // from class: com.google.android.gms.internal.ads.zzgai
            @Override // com.google.android.gms.internal.ads.zzgah
            public final InterfaceC0868u zza() {
                return AbstractC0870w.a(new Q(executorService));
            }
        };
    }
}
