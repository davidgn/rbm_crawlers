package com.google.android.gms.internal.ads;

import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
/* loaded from: classes.dex */
final class zzarp implements zzaro {
    private final FileChannel zza;
    private final long zzb;
    private final long zzc;

    public zzarp(FileChannel fileChannel, long j5, long j6) {
        this.zza = fileChannel;
        this.zzb = j5;
        this.zzc = j6;
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzb(MessageDigest[] messageDigestArr, long j5, int i) {
        MappedByteBuffer map = this.zza.map(FileChannel.MapMode.READ_ONLY, this.zzb + j5, i);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }
}
