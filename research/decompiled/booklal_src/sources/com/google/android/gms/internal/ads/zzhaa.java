package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes.dex */
final class zzhaa extends zzgzy {
    private zzhaa() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgzy
    public final void zza(zzhab zzhabVar, Set set, Set set2) {
        synchronized (zzhabVar) {
            try {
                if (zzhabVar.seenExceptionsField == null) {
                    zzhabVar.seenExceptionsField = set2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgzy
    public final int zzb(zzhab zzhabVar) {
        int i;
        synchronized (zzhabVar) {
            i = zzhabVar.remainingField - 1;
            zzhabVar.remainingField = i;
        }
        return i;
    }

    public /* synthetic */ zzhaa(byte[] bArr) {
        super(null);
    }
}
