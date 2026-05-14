package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class zzaud extends zzilb {
    public zzaud(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.zzilb
    public final void zze(ByteBuffer byteBuffer) {
        byteBuffer.position(byteBuffer.remaining() + byteBuffer.position());
    }
}
