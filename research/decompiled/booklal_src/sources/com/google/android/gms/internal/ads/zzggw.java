package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes.dex */
public final class zzggw {
    public static final Charset zza = StandardCharsets.UTF_8;
    private static Cipher zzb = null;
    private static final Object zzc = new Object();
    private static final Object zzd = new Object();

    private static final Cipher zzc() {
        Cipher cipher;
        synchronized (zzd) {
            try {
                if (zzb == null) {
                    zzb = Cipher.getInstance("AES/CBC/PKCS5Padding");
                }
                cipher = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cipher;
    }

    public final byte[] zza(byte[] bArr, String str) {
        byte[] doFinal;
        int length = bArr.length;
        try {
            byte[] zzb2 = zzgda.zzb(str, false);
            int length2 = zzb2.length;
            if (length2 > 16) {
                ByteBuffer allocate = ByteBuffer.allocate(length2);
                allocate.put(zzb2);
                allocate.flip();
                byte[] bArr2 = new byte[16];
                byte[] bArr3 = new byte[length2 - 16];
                allocate.get(bArr2);
                allocate.get(bArr3);
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                synchronized (zzc) {
                    zzc().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                    doFinal = zzc().doFinal(bArr3);
                }
                return doFinal;
            }
            throw new zzggv();
        } catch (IllegalArgumentException e5) {
            e = e5;
            throw new zzggv(e);
        } catch (InvalidAlgorithmParameterException e6) {
            e = e6;
            throw new zzggv(e);
        } catch (InvalidKeyException e7) {
            e = e7;
            throw new zzggv(e);
        } catch (NoSuchAlgorithmException e8) {
            e = e8;
            throw new zzggv(e);
        } catch (BadPaddingException e9) {
            e = e9;
            throw new zzggv(e);
        } catch (IllegalBlockSizeException e10) {
            e = e10;
            throw new zzggv(e);
        } catch (NoSuchPaddingException e11) {
            e = e11;
            throw new zzggv(e);
        }
    }

    public final String zzb(byte[] bArr, String str) {
        return new String(zza(bArr, str), zza);
    }
}
