package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public abstract class zzatv implements zzatw {
    private static final Logger zzb = Logger.getLogger(zzatv.class.getName());
    final ThreadLocal zza = new zzatu(this);

    public abstract zzatz zza(String str, byte[] bArr, String str2);

    @Override // com.google.android.gms.internal.ads.zzatw
    public final zzatz zzb(zzilg zzilgVar, zzaua zzauaVar) {
        int zza;
        long zzb2;
        long zzc = zzilgVar.zzc();
        ThreadLocal threadLocal = this.zza;
        ((ByteBuffer) threadLocal.get()).rewind().limit(8);
        do {
            zza = zzilgVar.zza((ByteBuffer) threadLocal.get());
            if (zza == 8) {
                ((ByteBuffer) threadLocal.get()).rewind();
                long zza2 = zzaty.zza((ByteBuffer) threadLocal.get());
                byte[] bArr = null;
                if (zza2 < 8 && zza2 > 1) {
                    Logger logger = zzb;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(zza2);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr2 = new byte[4];
                ((ByteBuffer) threadLocal.get()).get(bArr2);
                try {
                    String str = new String(bArr2, "ISO-8859-1");
                    if (zza2 == 1) {
                        ThreadLocal threadLocal2 = this.zza;
                        ((ByteBuffer) threadLocal2.get()).limit(16);
                        zzilgVar.zza((ByteBuffer) threadLocal2.get());
                        ((ByteBuffer) threadLocal2.get()).position(8);
                        zzb2 = zzaty.zzd((ByteBuffer) threadLocal2.get()) - 16;
                    } else {
                        zzb2 = zza2 == 0 ? zzilgVar.zzb() - zzilgVar.zzc() : zza2 - 8;
                    }
                    if ("uuid".equals(str)) {
                        ThreadLocal threadLocal3 = this.zza;
                        ((ByteBuffer) threadLocal3.get()).limit(((ByteBuffer) threadLocal3.get()).limit() + 16);
                        zzilgVar.zza((ByteBuffer) threadLocal3.get());
                        bArr = new byte[16];
                        for (int position = ((ByteBuffer) threadLocal3.get()).position() - 16; position < ((ByteBuffer) threadLocal3.get()).position(); position++) {
                            bArr[position - (((ByteBuffer) threadLocal3.get()).position() - 16)] = ((ByteBuffer) threadLocal3.get()).get(position);
                        }
                        zzb2 -= 16;
                    }
                    long j5 = zzb2;
                    zzatz zza3 = zza(str, bArr, zzauaVar instanceof zzatz ? ((zzatz) zzauaVar).zza() : "");
                    ThreadLocal threadLocal4 = this.zza;
                    ((ByteBuffer) threadLocal4.get()).rewind();
                    zza3.zzb(zzilgVar, (ByteBuffer) threadLocal4.get(), j5, this);
                    return zza3;
                } catch (UnsupportedEncodingException e5) {
                    throw new RuntimeException(e5);
                }
            }
        } while (zza >= 0);
        zzilgVar.zzd(zzc);
        throw new EOFException();
    }
}
