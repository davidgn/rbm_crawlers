package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafx  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzafx {
    static final zzafx zza = new zzafx(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc = false;
    private final Map zzd;

    public zzafx() {
        this.zzd = new HashMap();
    }

    public static zzafx zza() {
        return zza;
    }

    public final zzagi zzb(zzahp zzahpVar, int i) {
        return (zzagi) this.zzd.get(new zzafw(zzahpVar, i));
    }

    public zzafx(boolean z4) {
        this.zzd = Collections.emptyMap();
    }
}
