package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes.dex */
final class zzfe implements zzdx {
    private Message zza;

    private zzfe() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final void zza() {
        Message message = this.zza;
        message.getClass();
        message.sendToTarget();
        this.zza = null;
        zzff.zzo(this);
    }

    public final zzfe zzb(Message message, zzff zzffVar) {
        this.zza = message;
        return this;
    }

    public final boolean zzc(Handler handler) {
        Message message = this.zza;
        message.getClass();
        boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        this.zza = null;
        zzff.zzo(this);
        return sendMessageAtFrontOfQueue;
    }

    public /* synthetic */ zzfe(byte[] bArr) {
    }
}
