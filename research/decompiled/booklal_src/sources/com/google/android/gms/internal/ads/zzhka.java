package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhka {
    final zzhkb zza;
    final long[] zzb;

    public zzhka(zzhkb zzhkbVar, long[] jArr) {
        this.zza = zzhkbVar;
        this.zzb = jArr;
    }

    public zzhka() {
        this(new zzhkb(), new long[10]);
    }

    public zzhka(zzhka zzhkaVar) {
        this.zza = new zzhkb(zzhkaVar.zza);
        this.zzb = Arrays.copyOf(zzhkaVar.zzb, 10);
    }
}
