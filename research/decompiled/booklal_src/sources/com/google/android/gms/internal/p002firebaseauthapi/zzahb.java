package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.List;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahb  reason: invalid package */
/* loaded from: classes2.dex */
final class zzahb extends zzahd {
    public /* synthetic */ zzahb(zzaha zzahaVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzahd
    public final List zza(Object obj, long j5) {
        zzagp zzagpVar = (zzagp) zzajf.zzf(obj, j5);
        if (zzagpVar.zzc()) {
            return zzagpVar;
        }
        int size = zzagpVar.size();
        zzagp zzd = zzagpVar.zzd(size == 0 ? 10 : size + size);
        zzajf.zzs(obj, j5, zzd);
        return zzd;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzahd
    public final void zzb(Object obj, long j5) {
        ((zzagp) zzajf.zzf(obj, j5)).zzb();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzahd
    public final void zzc(Object obj, Object obj2, long j5) {
        zzagp zzagpVar = (zzagp) zzajf.zzf(obj, j5);
        zzagp zzagpVar2 = (zzagp) zzajf.zzf(obj2, j5);
        int size = zzagpVar.size();
        int size2 = zzagpVar2.size();
        if (size > 0 && size2 > 0) {
            if (!zzagpVar.zzc()) {
                zzagpVar = zzagpVar.zzd(size2 + size);
            }
            zzagpVar.addAll(zzagpVar2);
        }
        if (size > 0) {
            zzagpVar2 = zzagpVar;
        }
        zzajf.zzs(obj, j5, zzagpVar2);
    }

    private zzahb() {
        super(null);
    }
}
