package com.google.android.gms.internal.ads;

import e1.i;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzhgk extends zzhdw {
    private final zzhgj zza;
    private final String zzb;
    private final zzhgi zzc;
    private final zzhdw zzd;

    public /* synthetic */ zzhgk(zzhgj zzhgjVar, String str, zzhgi zzhgiVar, zzhdw zzhdwVar, byte[] bArr) {
        this.zza = zzhgjVar;
        this.zzb = str;
        this.zzc = zzhgiVar;
        this.zzd = zzhdwVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzhgk) {
            zzhgk zzhgkVar = (zzhgk) obj;
            return zzhgkVar.zzc.equals(this.zzc) && zzhgkVar.zzd.equals(this.zzd) && zzhgkVar.zzb.equals(this.zzb) && zzhgkVar.zza.equals(this.zza);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(zzhgk.class, this.zzb, this.zzc, this.zzd, this.zza);
    }

    public final String toString() {
        zzhgj zzhgjVar = this.zza;
        zzhdw zzhdwVar = this.zzd;
        String valueOf = String.valueOf(this.zzc);
        String valueOf2 = String.valueOf(zzhdwVar);
        String valueOf3 = String.valueOf(zzhgjVar);
        String str = this.zzb;
        int length = String.valueOf(str).length();
        int length2 = valueOf.length();
        StringBuilder sb = new StringBuilder(length + 64 + length2 + 27 + valueOf2.length() + 11 + valueOf3.length() + 1);
        i.j(sb, "LegacyKmsEnvelopeAead Parameters (kekUri: ", str, ", dekParsingStrategy: ", valueOf);
        i.j(sb, ", dekParametersForNewKeys: ", valueOf2, ", variant: ", valueOf3);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzhde
    public final boolean zza() {
        return this.zza != zzhgj.zzb;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final zzhgj zzc() {
        return this.zza;
    }

    public final zzhdw zzd() {
        return this.zzd;
    }
}
