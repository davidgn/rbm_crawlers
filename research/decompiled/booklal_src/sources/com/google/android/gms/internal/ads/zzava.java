package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes.dex */
public final class zzava {
    public static final zzava zzb = new zzava(new byte[0]);
    public static final Comparator zzc = new zzauz();
    public final byte[] zza;

    public zzava(byte[] bArr) {
        this.zza = bArr;
    }

    public static zzava zze(byte[] bArr) {
        return new zzava(zzh(bArr, 0, bArr.length));
    }

    public static zzava zzf(String str) {
        return zze(str.getBytes(Charset.forName(zzauy.zza("Hn2H4l0="))));
    }

    public static int zzg(byte b5) {
        int[] iArr = {2107654819, 15074090, 1957914693, -2142502098, -1902504939, -100121615, 100669, 1835342733, 837626799};
        int i = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = iArr[3];
        int i7 = iArr[4];
        return b5 & (com.google.android.gms.ads.internal.util.client.a.r((i4 & (~i)) | i5, (i & i6) | i7, iArr[5], iArr[6]) ^ (iArr[7] % 837626799));
    }

    public static byte[] zzh(byte[] bArr, int i, int i4) {
        if (i4 == 0) {
            return new byte[0];
        }
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, i, bArr2, 0, i4);
        return bArr2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzava) {
            return Arrays.equals(this.zza, ((zzava) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(Arrays.hashCode(this.zza));
    }

    public final String toString() {
        int[] iArr = {936621968, 262671172, 1099388327, 506341952, 1363551406, -1491858486, 110389885, 989492335, 981766422};
        int i = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = iArr[3];
        int i7 = iArr[4];
        int i8 = iArr[5];
        int i9 = iArr[6];
        int i10 = iArr[7];
        int r5 = com.google.android.gms.ads.internal.util.client.a.r((i4 & (~i)) | i5, (i & i6) | i7, i8, i9);
        String arrays = Arrays.toString(this.zza);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + ((i10 % 981766422) ^ r5));
        sb.append(zzauy.zza("CVC1qiQNJHikW0iU1TIPZA=="));
        sb.append(arrays);
        sb.append(zzauy.zza("Ng=="));
        return sb.toString();
    }

    public final byte[] zza() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        return length == 0 ? new byte[0] : zzh(bArr, 0, length);
    }

    public final byte zzb(int i) {
        int i4 = ((((~2106914653) & 587408197) | 1537377410) + ((2106914653 & 536945509) | 443419704)) - 2137956065;
        int i5 = 2013725218 % 1633938701;
        int i6 = ((((~1287859999) & 62941354) | 437464817) + ((1287859999 & 1639989262) | 1644309956)) - 2060977796;
        int i7 = 1442767057 % 63299708;
        byte[] bArr = this.zza;
        int length = bArr.length;
        if (((length - (i + 1)) | i) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(C.a.e(i, i4 ^ i5));
                sb.append(zzauy.zza("Akelqh1fajntGgo="));
                sb.append(i);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder(C.a.e(length, C.a.e(i, i6 ^ i7)));
            sb2.append(zzauy.zza("Akelqh1faDmxRUSK1T9GeQ=="));
            sb2.append(i);
            sb2.append(zzauy.zza("Zwk="));
            sb2.append(length);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        return bArr[i];
    }

    public final String zzc() {
        Charset forName = Charset.forName(zzauy.zza("Hn2H4l0="));
        byte[] bArr = this.zza;
        return new String(bArr, 0, bArr.length, forName);
    }

    public final zzava zzd(zzava zzavaVar) {
        byte[] bArr = zzavaVar.zza;
        int length = bArr.length;
        byte[] bArr2 = this.zza;
        int length2 = bArr2.length;
        byte[] bArr3 = new byte[length2 + length];
        System.arraycopy(bArr2, 0, bArr3, 0, length2);
        System.arraycopy(bArr, 0, bArr3, length2, length);
        return zze(bArr3);
    }
}
