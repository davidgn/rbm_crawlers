package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes.dex */
final class zzgww extends zzgxa {
    final /* synthetic */ Comparator zza;

    public zzgww(Comparator comparator) {
        this.zza = comparator;
    }

    @Override // com.google.android.gms.internal.ads.zzgxa
    public final Map zza() {
        return new TreeMap(this.zza);
    }
}
