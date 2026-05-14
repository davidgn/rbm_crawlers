package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdFormat;
import java.util.Locale;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzfsn {
    private final String zza;
    private final AdFormat zzb;
    private final String zzc;

    public /* synthetic */ zzfsn(zzfsm zzfsmVar, byte[] bArr) {
        this.zza = zzfsmVar.zzb();
        this.zzb = zzfsmVar.zzc();
        this.zzc = zzfsmVar.zzd();
    }

    public final boolean equals(Object obj) {
        AdFormat adFormat;
        AdFormat adFormat2;
        if (obj instanceof zzfsn) {
            zzfsn zzfsnVar = (zzfsn) obj;
            if (this.zza.equals(zzfsnVar.zza) && (adFormat = this.zzb) != null && (adFormat2 = zzfsnVar.zzb) != null && adFormat.equals(adFormat2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String zza() {
        return this.zza;
    }

    public final String zzb() {
        AdFormat adFormat = this.zzb;
        return adFormat == null ? "unknown" : adFormat.name().toLowerCase(Locale.ENGLISH);
    }

    public final String zzc() {
        return this.zzc;
    }
}
