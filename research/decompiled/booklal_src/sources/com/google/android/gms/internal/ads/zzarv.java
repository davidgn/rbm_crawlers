package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public final class zzarv {
    public static Pair zza(RandomAccessFile randomAccessFile) {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair zze = zze(randomAccessFile, 0);
        return zze != null ? zze : zze(randomAccessFile, 65535);
    }

    public static long zzb(ByteBuffer byteBuffer) {
        zzf(byteBuffer);
        return zzg(byteBuffer, byteBuffer.position() + 16);
    }

    public static void zzc(ByteBuffer byteBuffer, long j5) {
        zzf(byteBuffer);
        int position = byteBuffer.position() + 16;
        if (j5 >= 0 && j5 <= 4294967295L) {
            byteBuffer.putInt(byteBuffer.position() + position, (int) j5);
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(j5).length() + 27);
        sb.append("uint32 value of out range: ");
        sb.append(j5);
        throw new IllegalArgumentException(sb.toString());
    }

    public static long zzd(ByteBuffer byteBuffer) {
        zzf(byteBuffer);
        return zzg(byteBuffer, byteBuffer.position() + 12);
    }

    private static Pair zze(RandomAccessFile randomAccessFile, int i) {
        int i4;
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i, (-22) + length)) + 22);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        long capacity = length - allocate.capacity();
        randomAccessFile.seek(capacity);
        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
        zzf(allocate);
        int capacity2 = allocate.capacity();
        if (capacity2 >= 22) {
            int i5 = capacity2 - 22;
            int min = Math.min(i5, 65535);
            for (int i6 = 0; i6 < min; i6++) {
                i4 = i5 - i6;
                if (allocate.getInt(i4) == 101010256 && ((char) allocate.getShort(i4 + 20)) == i6) {
                    break;
                }
            }
        }
        i4 = -1;
        if (i4 != -1) {
            allocate.position(i4);
            ByteBuffer slice = allocate.slice();
            slice.order(ByteOrder.LITTLE_ENDIAN);
            return Pair.create(slice, Long.valueOf(capacity + i4));
        }
        return null;
    }

    private static void zzf(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static long zzg(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getInt(i) & 4294967295L;
    }
}
