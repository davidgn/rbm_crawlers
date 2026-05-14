package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class zzaqp {
    public final int zza;
    public final String zzb;
    public final int zzc;
    public final List zzd;
    public final byte[] zze;

    public zzaqp(int i, String str, int i4, List list, byte[] bArr) {
        this.zza = i;
        this.zzb = str;
        this.zzc = i4;
        this.zzd = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zze = bArr;
    }

    public final int zza() {
        int i = this.zzc;
        if (i != 2) {
            return i != 3 ? 0 : 512;
        }
        return 2048;
    }
}
