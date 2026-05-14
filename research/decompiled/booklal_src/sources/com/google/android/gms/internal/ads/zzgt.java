package com.google.android.gms.internal.ads;

import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class zzgt {
    public static List zza(ByteBuffer byteBuffer) {
        int remaining;
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (asReadOnlyBuffer.hasRemaining()) {
            try {
                byte b5 = asReadOnlyBuffer.get();
                int i = b5 >> 3;
                if (((b5 >> 2) & 1) != 0) {
                    asReadOnlyBuffer.get();
                }
                if (((b5 >> 1) & 1) != 0) {
                    remaining = 0;
                    for (int i4 = 0; i4 < 8; i4++) {
                        byte b6 = asReadOnlyBuffer.get();
                        remaining |= (b6 & Byte.MAX_VALUE) << (i4 * 7);
                        if ((b6 & 128) == 0) {
                            break;
                        }
                    }
                } else {
                    remaining = asReadOnlyBuffer.remaining();
                }
                if (asReadOnlyBuffer.position() + remaining > asReadOnlyBuffer.limit()) {
                    break;
                }
                int i5 = i & 15;
                ByteBuffer duplicate = asReadOnlyBuffer.duplicate();
                duplicate.limit(asReadOnlyBuffer.position() + remaining);
                arrayList.add(new zzgr(i5, duplicate, null));
                asReadOnlyBuffer.position(asReadOnlyBuffer.position() + remaining);
            } catch (BufferUnderflowException unused) {
            }
        }
        return arrayList;
    }

    public static /* synthetic */ void zzb(boolean z4) {
        if (z4) {
            throw new zzgq(null);
        }
    }
}
