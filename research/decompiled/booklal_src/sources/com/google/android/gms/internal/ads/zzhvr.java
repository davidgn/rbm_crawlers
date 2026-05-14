package com.google.android.gms.internal.ads;

import e1.i;
import java.math.BigInteger;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzhvr extends zzhwn {
    public static final BigInteger zza = BigInteger.valueOf(65537);
    private final int zzb;
    private final BigInteger zzc;
    private final zzhvq zzd;
    private final zzhvp zze;

    public /* synthetic */ zzhvr(int i, BigInteger bigInteger, zzhvq zzhvqVar, zzhvp zzhvpVar, byte[] bArr) {
        this.zzb = i;
        this.zzc = bigInteger;
        this.zzd = zzhvqVar;
        this.zze = zzhvpVar;
    }

    public static zzhvo zzb() {
        return new zzhvo(null);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzhvr) {
            zzhvr zzhvrVar = (zzhvr) obj;
            return zzhvrVar.zzb == this.zzb && Objects.equals(zzhvrVar.zzc, this.zzc) && zzhvrVar.zzd == this.zzd && zzhvrVar.zze == this.zze;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(zzhvr.class, Integer.valueOf(this.zzb), this.zzc, this.zzd, this.zze);
    }

    public final String toString() {
        BigInteger bigInteger = this.zzc;
        zzhvp zzhvpVar = this.zze;
        String valueOf = String.valueOf(this.zzd);
        String valueOf2 = String.valueOf(zzhvpVar);
        String valueOf3 = String.valueOf(bigInteger);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        int length3 = valueOf3.length();
        int i = this.zzb;
        StringBuilder sb = new StringBuilder(length + 47 + length2 + 18 + length3 + 6 + String.valueOf(i).length() + 13);
        i.j(sb, "RSA SSA PKCS1 Parameters (variant: ", valueOf, ", hashType: ", valueOf2);
        sb.append(", publicExponent: ");
        sb.append(valueOf3);
        sb.append(", and ");
        sb.append(i);
        sb.append("-bit modulus)");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzhde
    public final boolean zza() {
        return this.zzd != zzhvq.zzd;
    }

    public final int zzc() {
        return this.zzb;
    }

    public final BigInteger zzd() {
        return this.zzc;
    }

    public final zzhvq zze() {
        return this.zzd;
    }

    public final zzhvp zzf() {
        return this.zze;
    }
}
