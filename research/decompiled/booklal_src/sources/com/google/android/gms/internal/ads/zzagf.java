package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class zzagf {
    public static List zza(byte[] bArr) {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(zzh(zzi(zze(bArr))));
        arrayList.add(zzh(zzi(3840L)));
        return arrayList;
    }

    public static int zzb(ByteBuffer byteBuffer) {
        int i;
        if ((byteBuffer.get(5) & 2) == 0) {
            i = 0;
        } else {
            byte b5 = byteBuffer.get(26);
            int i4 = 28;
            int i5 = 28;
            for (int i6 = 0; i6 < b5; i6++) {
                i5 += byteBuffer.get(i6 + 27);
            }
            byte b6 = byteBuffer.get(i5 + 26);
            for (int i7 = 0; i7 < b6; i7++) {
                i4 += byteBuffer.get(i5 + 27 + i7);
            }
            i = i5 + i4;
        }
        int i8 = byteBuffer.get(i + 26) + 27 + i;
        return (int) ((zzg(byteBuffer.get(i8), byteBuffer.limit() - i8 > 1 ? byteBuffer.get(i8 + 1) : (byte) 0) * 48000) / 1000000);
    }

    public static int zzc(ByteBuffer byteBuffer) {
        return (int) ((zzg(byteBuffer.get(0), byteBuffer.limit() > 1 ? byteBuffer.get(1) : (byte) 0) * 48000) / 1000000);
    }

    public static long zzd(byte[] bArr) {
        return zzg(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0);
    }

    public static int zze(byte[] bArr) {
        return (bArr[10] & 255) | ((bArr[11] & 255) << 8);
    }

    public static boolean zzf(long j5, long j6) {
        return j5 - j6 <= zzi(3840L) / 1000;
    }

    private static long zzg(byte b5, byte b6) {
        int i;
        int i4;
        int i5 = b5 & 255;
        int i6 = b5 & 3;
        if (i6 != 0) {
            i = 2;
            if (i6 != 1 && i6 != 2) {
                i = b6 & 63;
            }
        } else {
            i = 1;
        }
        int i7 = i5 >> 3;
        return i * (i7 >= 16 ? 2500 << i4 : i7 >= 12 ? 10000 << (i7 & 1) : (i7 & 3) == 3 ? 60000 : 10000 << i4);
    }

    private static byte[] zzh(long j5) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j5).array();
    }

    private static long zzi(long j5) {
        return (j5 * 1000000000) / 48000;
    }
}
