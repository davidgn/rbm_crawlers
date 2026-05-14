package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class zzgzg extends zzgzh {
    public static int zza(long j5) {
        int i = (int) j5;
        zzgsj.zze(((long) i) == j5, "Out of range: %s", j5);
        return i;
    }

    public static int zzb(long j5) {
        if (j5 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j5 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j5;
    }

    public static int zzc(int i, int i4, int i5) {
        zzgsj.zzg(true, "min (%s) must be less than or equal to max (%s)", i4, 1073741823);
        return Math.min(Math.max(i, i4), 1073741823);
    }

    public static int zzd(byte[] bArr) {
        int length = bArr.length;
        zzgsj.zzg(length >= 4, "array too small: %s < %s", length, 4);
        return zze(bArr[0], bArr[1], bArr[2], bArr[3]);
    }

    public static int zze(byte b5, byte b6, byte b7, byte b8) {
        return (b5 << 24) | ((b6 & 255) << 16) | ((b7 & 255) << 8) | (b8 & 255);
    }

    public static int[] zzf(Collection collection) {
        if (collection instanceof zzgzf) {
            zzgzf zzgzfVar = (zzgzf) collection;
            return Arrays.copyOfRange(zzgzfVar.zza, zzgzfVar.zzb, zzgzfVar.zzc);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            Object obj = array[i];
            obj.getClass();
            iArr[i] = ((Number) obj).intValue();
        }
        return iArr;
    }

    public static List zzg(int... iArr) {
        int length = iArr.length;
        return length == 0 ? Collections.emptyList() : new zzgzf(iArr, 0, length);
    }

    public static Integer zzh(String str, int i) {
        Long valueOf;
        str.getClass();
        if (!str.isEmpty()) {
            char charAt = str.charAt(0);
            int i4 = charAt == '-' ? 1 : 0;
            if (i4 != str.length()) {
                int i5 = i4 + 1;
                int zza = zzgzi.zza(str.charAt(i4));
                if (zza >= 0 && zza < 10) {
                    long j5 = -zza;
                    while (true) {
                        if (i5 < str.length()) {
                            int i6 = i5 + 1;
                            int zza2 = zzgzi.zza(str.charAt(i5));
                            if (zza2 < 0 || zza2 >= 10 || j5 < -922337203685477580L) {
                                break;
                            }
                            long j6 = j5 * 10;
                            long j7 = zza2;
                            if (j6 < Long.MIN_VALUE + j7) {
                                break;
                            }
                            j5 = j6 - j7;
                            i5 = i6;
                        } else if (charAt == '-') {
                            valueOf = Long.valueOf(j5);
                        } else if (j5 != Long.MIN_VALUE) {
                            valueOf = Long.valueOf(-j5);
                        }
                    }
                }
            }
        }
        valueOf = null;
        if (valueOf == null || valueOf.longValue() != valueOf.intValue()) {
            return null;
        }
        return Integer.valueOf(valueOf.intValue());
    }

    public static /* synthetic */ int zzi(int[] iArr, int i, int i4, int i5) {
        while (i4 < i5) {
            if (iArr[i4] == i) {
                return i4;
            }
            i4++;
        }
        return -1;
    }
}
