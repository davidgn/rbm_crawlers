package com.google.android.gms.internal.ads;

import e1.i;
import java.math.BigInteger;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzhwd extends zzhwn {
    public static final BigInteger zza = BigInteger.valueOf(65537);
    private final int zzb;
    private final BigInteger zzc;
    private final zzhwc zzd;
    private final zzhwb zze;
    private final zzhwb zzf;
    private final int zzg;

    public /* synthetic */ zzhwd(int i, BigInteger bigInteger, zzhwc zzhwcVar, zzhwb zzhwbVar, zzhwb zzhwbVar2, int i4, byte[] bArr) {
        this.zzb = i;
        this.zzc = bigInteger;
        this.zzd = zzhwcVar;
        this.zze = zzhwbVar;
        this.zzf = zzhwbVar2;
        this.zzg = i4;
    }

    public static zzhwa zzb() {
        return new zzhwa(null);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzhwd) {
            zzhwd zzhwdVar = (zzhwd) obj;
            return zzhwdVar.zzb == this.zzb && Objects.equals(zzhwdVar.zzc, this.zzc) && Objects.equals(zzhwdVar.zzd, this.zzd) && Objects.equals(zzhwdVar.zze, this.zze) && Objects.equals(zzhwdVar.zzf, this.zzf) && zzhwdVar.zzg == this.zzg;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(zzhwd.class, Integer.valueOf(this.zzb), this.zzc, this.zzd, this.zze, this.zzf, Integer.valueOf(this.zzg));
    }

    public final String toString() {
        BigInteger bigInteger = this.zzc;
        zzhwb zzhwbVar = this.zzf;
        zzhwb zzhwbVar2 = this.zze;
        String valueOf = String.valueOf(this.zzd);
        String valueOf2 = String.valueOf(zzhwbVar2);
        String valueOf3 = String.valueOf(zzhwbVar);
        String valueOf4 = String.valueOf(bigInteger);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        int length3 = valueOf3.length();
        int i = this.zzg;
        int length4 = String.valueOf(i).length();
        int length5 = valueOf4.length();
        int i4 = this.zzb;
        StringBuilder sb = new StringBuilder(length + 55 + length2 + 17 + length3 + 19 + length4 + 18 + length5 + 6 + String.valueOf(i4).length() + 13);
        i.j(sb, "RSA SSA PSS Parameters (variant: ", valueOf, ", signature hashType: ", valueOf2);
        sb.append(", mgf1 hashType: ");
        sb.append(valueOf3);
        sb.append(", saltLengthBytes: ");
        sb.append(i);
        sb.append(", publicExponent: ");
        sb.append(valueOf4);
        sb.append(", and ");
        sb.append(i4);
        sb.append("-bit modulus)");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzhde
    public final boolean zza() {
        return this.zzd != zzhwc.zzd;
    }

    public final int zzc() {
        return this.zzb;
    }

    public final BigInteger zzd() {
        return this.zzc;
    }

    public final zzhwc zze() {
        return this.zzd;
    }

    public final zzhwb zzf() {
        return this.zze;
    }

    public final zzhwb zzg() {
        return this.zzf;
    }

    public final int zzh() {
        return this.zzg;
    }
}
