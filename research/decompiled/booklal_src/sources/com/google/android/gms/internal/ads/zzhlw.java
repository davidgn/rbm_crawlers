package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class zzhlw {
    public static final zzhzy zza = zzhzy.zza(new byte[0]);

    public static final zzhzy zza(int i) {
        return zzhzy.zza(ByteBuffer.allocate(5).put((byte) 0).putInt(i).array());
    }

    public static final zzhzy zzb(int i) {
        return zzhzy.zza(ByteBuffer.allocate(5).put((byte) 1).putInt(i).array());
    }
}
