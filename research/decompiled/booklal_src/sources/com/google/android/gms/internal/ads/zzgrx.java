package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public abstract class zzgrx implements zzgsk {
    public static zzgrx zzc(char c5) {
        return new zzgru(c5);
    }

    @Override // com.google.android.gms.internal.ads.zzgsk
    @Deprecated
    public final /* synthetic */ boolean zza(Object obj) {
        return zzb(((Character) obj).charValue());
    }

    public abstract boolean zzb(char c5);
}
