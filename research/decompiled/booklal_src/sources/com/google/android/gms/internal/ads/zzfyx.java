package com.google.android.gms.internal.ads;

import java.io.Closeable;
/* loaded from: classes.dex */
public abstract class zzfyx implements Closeable {
    public static zzfzj zza() {
        return new zzfzj();
    }

    public static zzfzj zzb(zzgtb<Integer> zzgtbVar, zzgtb<Integer> zzgtbVar2, zzfyz zzfyzVar) {
        return new zzfzj(zzgtbVar, zzgtbVar2, zzfyzVar);
    }

    public static zzfzj zzc(final int i, zzfyz zzfyzVar) {
        return new zzfzj(new zzgtb() { // from class: com.google.android.gms.internal.ads.zzfyw
            @Override // com.google.android.gms.internal.ads.zzgtb
            public final /* synthetic */ Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        }, zzfyv.zza, zzfyzVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer zzf() {
        return -1;
    }
}
