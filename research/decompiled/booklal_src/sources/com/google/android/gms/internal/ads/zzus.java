package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes.dex */
public interface zzus {
    void zza(int i, int i4, int i5, long j5, int i6);

    void zzb(int i, int i4, zzil zzilVar, long j5, int i5);

    void zzc(int i, boolean z4);

    void zzd(int i, long j5);

    int zze();

    int zzf(MediaCodec.BufferInfo bufferInfo);

    MediaFormat zzg();

    ByteBuffer zzh(int i);

    default void zzi(Runnable runnable) {
        runnable.run();
    }

    ByteBuffer zzj(int i);

    void zzk();

    void zzl();

    default boolean zzm(zzur zzurVar) {
        return false;
    }

    void zzn(Surface surface);

    void zzo();

    void zzp(Bundle bundle);

    void zzq(int i);

    void zzr(List list);
}
