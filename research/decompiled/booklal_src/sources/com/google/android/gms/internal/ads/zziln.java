package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zziln {
    public static final zziln zzj = new zziln(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final zziln zzk = new zziln(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final zziln zzl = new zziln(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final zziln zzm = new zziln(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public final double zza;
    public final double zzb;
    public final double zzc;
    public final double zzd;
    public final double zze;
    public final double zzf;
    public final double zzg;
    public final double zzh;
    public final double zzi;

    public zziln(double d2, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12) {
        this.zza = d8;
        this.zzb = d9;
        this.zzc = d10;
        this.zzd = d2;
        this.zze = d5;
        this.zzf = d6;
        this.zzg = d7;
        this.zzh = d11;
        this.zzi = d12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zziln.class != obj.getClass()) {
            return false;
        }
        zziln zzilnVar = (zziln) obj;
        return Double.compare(zzilnVar.zzd, this.zzd) == 0 && Double.compare(zzilnVar.zze, this.zze) == 0 && Double.compare(zzilnVar.zzf, this.zzf) == 0 && Double.compare(zzilnVar.zzg, this.zzg) == 0 && Double.compare(zzilnVar.zzh, this.zzh) == 0 && Double.compare(zzilnVar.zzi, this.zzi) == 0 && Double.compare(zzilnVar.zza, this.zza) == 0 && Double.compare(zzilnVar.zzb, this.zzb) == 0 && Double.compare(zzilnVar.zzc, this.zzc) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.zza);
        long j5 = doubleToLongBits ^ (doubleToLongBits >>> 32);
        long doubleToLongBits2 = Double.doubleToLongBits(this.zzb);
        long j6 = doubleToLongBits2 ^ (doubleToLongBits2 >>> 32);
        long doubleToLongBits3 = Double.doubleToLongBits(this.zzc);
        long j7 = doubleToLongBits3 ^ (doubleToLongBits3 >>> 32);
        long doubleToLongBits4 = Double.doubleToLongBits(this.zzd);
        long j8 = doubleToLongBits4 ^ (doubleToLongBits4 >>> 32);
        long doubleToLongBits5 = Double.doubleToLongBits(this.zze);
        long j9 = doubleToLongBits5 ^ (doubleToLongBits5 >>> 32);
        long doubleToLongBits6 = Double.doubleToLongBits(this.zzf);
        long j10 = doubleToLongBits6 ^ (doubleToLongBits6 >>> 32);
        long doubleToLongBits7 = Double.doubleToLongBits(this.zzg);
        long j11 = doubleToLongBits7 ^ (doubleToLongBits7 >>> 32);
        long doubleToLongBits8 = Double.doubleToLongBits(this.zzh);
        long j12 = doubleToLongBits8 ^ (doubleToLongBits8 >>> 32);
        long doubleToLongBits9 = Double.doubleToLongBits(this.zzi);
        return (((((((((((((((((int) j5) * 31) + ((int) j6)) * 31) + ((int) j7)) * 31) + ((int) j8)) * 31) + ((int) j9)) * 31) + ((int) j10)) * 31) + ((int) j11)) * 31) + ((int) j12)) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(zzj)) {
            return "Rotate 0°";
        }
        if (equals(zzk)) {
            return "Rotate 90°";
        }
        if (equals(zzl)) {
            return "Rotate 180°";
        }
        if (equals(zzm)) {
            return "Rotate 270°";
        }
        double d2 = this.zza;
        double d5 = this.zzb;
        double d6 = this.zzc;
        double d7 = this.zzd;
        double d8 = this.zze;
        double d9 = this.zzf;
        double d10 = this.zzg;
        double d11 = this.zzh;
        double d12 = this.zzi;
        StringBuilder sb = new StringBuilder(260);
        sb.append("Matrix{u=");
        sb.append(d2);
        sb.append(", v=");
        sb.append(d5);
        sb.append(", w=");
        sb.append(d6);
        sb.append(", a=");
        sb.append(d7);
        sb.append(", b=");
        sb.append(d8);
        sb.append(", c=");
        sb.append(d9);
        sb.append(", d=");
        sb.append(d10);
        sb.append(", tx=");
        sb.append(d11);
        sb.append(", ty=");
        sb.append(d12);
        sb.append("}");
        return sb.toString();
    }
}
