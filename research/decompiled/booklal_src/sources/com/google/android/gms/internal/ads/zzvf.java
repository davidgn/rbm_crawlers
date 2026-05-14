package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes.dex */
final class zzvf {
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;

    public zzvf(String str, boolean z4, boolean z5) {
        this.zza = str;
        this.zzb = z4;
        this.zzc = z5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == zzvf.class) {
            zzvf zzvfVar = (zzvf) obj;
            if (TextUtils.equals(this.zza, zzvfVar.zza) && this.zzb == zzvfVar.zzb && this.zzc == zzvfVar.zzc) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.zza.hashCode() + 31) * 31) + (true != this.zzb ? 1237 : 1231)) * 31) + (true != this.zzc ? 1237 : 1231);
    }
}
