package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class zzilb implements zzatz {
    private static final zzilm zzg = zzilm.zzb(zzilb.class);
    protected final String zza;
    long zzd;
    zzilg zzf;
    private ByteBuffer zzh;
    long zze = -1;
    boolean zzc = true;
    boolean zzb = true;

    public zzilb(String str) {
        this.zza = str;
    }

    private final synchronized void zzc() {
        try {
            if (this.zzc) {
                return;
            }
            try {
                zzilm zzilmVar = zzg;
                String str = this.zza;
                zzilmVar.zza(str.length() != 0 ? "mem mapping ".concat(str) : new String("mem mapping "));
                this.zzh = this.zzf.zze(this.zzd, this.zze);
                this.zzc = true;
            } catch (IOException e5) {
                throw new RuntimeException(e5);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatz
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzatz
    public final void zzb(zzilg zzilgVar, ByteBuffer byteBuffer, long j5, zzatw zzatwVar) {
        this.zzd = zzilgVar.zzc();
        byteBuffer.remaining();
        this.zze = j5;
        this.zzf = zzilgVar;
        zzilgVar.zzd(zzilgVar.zzc() + j5);
        this.zzc = false;
        this.zzb = false;
        zzf();
    }

    public abstract void zze(ByteBuffer byteBuffer);

    public final synchronized void zzf() {
        try {
            zzc();
            zzilm zzilmVar = zzg;
            String str = this.zza;
            zzilmVar.zza(str.length() != 0 ? "parsing details of ".concat(str) : new String("parsing details of "));
            ByteBuffer byteBuffer = this.zzh;
            if (byteBuffer != null) {
                this.zzb = true;
                byteBuffer.rewind();
                zze(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    byteBuffer.slice();
                }
                this.zzh = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
