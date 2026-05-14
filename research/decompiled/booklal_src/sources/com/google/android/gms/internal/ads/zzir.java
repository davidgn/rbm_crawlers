package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzir {
    private final Map zza;

    public zzir() {
        this.zza = new HashMap();
    }

    public final zzir zza(String str, int i) {
        this.zza.put(str, Integer.valueOf(i));
        return this;
    }

    public final zzir zzb(String str, long j5) {
        this.zza.put(str, Long.valueOf(j5));
        return this;
    }

    public final zzir zzc(String str, float f5) {
        this.zza.put(str, Float.valueOf(f5));
        return this;
    }

    public final zzir zzd(String str, String str2) {
        this.zza.put(str, str2);
        return this;
    }

    public final zzir zze(String str, ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            this.zza.put(str, null);
        } else {
            ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
            allocate.put(byteBuffer.duplicate());
            allocate.flip();
            this.zza.put(str, allocate);
        }
        return this;
    }

    public final zzir zzf(String str) {
        this.zza.remove(str);
        return this;
    }

    public final zzis zzg() {
        return new zzis(this.zza, null);
    }
}
