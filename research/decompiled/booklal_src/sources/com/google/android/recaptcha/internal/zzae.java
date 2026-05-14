package com.google.android.recaptcha.internal;

import kotlin.jvm.internal.i;
/* loaded from: classes2.dex */
public final class zzae {
    private final String zza;
    private final long zzb;
    private final int zzc;

    public zzae(String str, long j5, int i) {
        this.zza = str;
        this.zzb = j5;
        this.zzc = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzae) {
            zzae zzaeVar = (zzae) obj;
            return i.a(zzaeVar.zza, this.zza) && zzaeVar.zzb == this.zzb && zzaeVar.zzc == this.zzc;
        }
        return false;
    }

    public final int zza() {
        return this.zzc;
    }

    public final long zzb() {
        return this.zzb;
    }

    public final String zzc() {
        return this.zza;
    }
}
