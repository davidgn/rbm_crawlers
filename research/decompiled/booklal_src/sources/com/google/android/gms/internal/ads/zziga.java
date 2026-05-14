package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes.dex */
final class zziga {
    static final long zza;
    static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class zzd;
    private static final boolean zze;
    private static final zzifz zzf;
    private static final boolean zzg;
    private static final boolean zzh;
    private static final long zzi;

    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0120  */
    static {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zziga.<clinit>():void");
    }

    private zziga() {
    }

    public static /* synthetic */ void zzA(Throwable th) {
        Logger.getLogger(zziga.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    private static int zzB(Class cls) {
        if (zzh) {
            return zzf.zza.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int zzC(Class cls) {
        if (zzh) {
            return zzf.zza.arrayIndexScale(cls);
        }
        return -1;
    }

    private static Field zzD() {
        int i = zzibm.zza;
        Field zzE = zzE(Buffer.class, "effectiveDirectAddress");
        if (zzE == null) {
            Field zzE2 = zzE(Buffer.class, "address");
            if (zzE2 == null || zzE2.getType() != Long.TYPE) {
                return null;
            }
            return zzE2;
        }
        return zzE;
    }

    private static Field zzE(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzF(Object obj, long j5, byte b5) {
        Unsafe unsafe = zzf.zza;
        long j6 = (-4) & j5;
        int i = unsafe.getInt(obj, j6);
        int i4 = ((~((int) j5)) & 3) << 3;
        unsafe.putInt(obj, j6, ((255 & b5) << i4) | (i & (~(255 << i4))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzG(Object obj, long j5, byte b5) {
        Unsafe unsafe = zzf.zza;
        long j6 = (-4) & j5;
        int i = (((int) j5) & 3) << 3;
        unsafe.putInt(obj, j6, ((255 & b5) << i) | (unsafe.getInt(obj, j6) & (~(255 << i))));
    }

    public static boolean zza() {
        return zzh;
    }

    public static boolean zzb() {
        return zzg;
    }

    public static Object zzc(Class cls) {
        try {
            return zzc.allocateInstance(cls);
        } catch (InstantiationException e5) {
            throw new IllegalStateException(e5);
        }
    }

    public static int zzd(Object obj, long j5) {
        return zzf.zza.getInt(obj, j5);
    }

    public static void zze(Object obj, long j5, int i) {
        zzf.zza.putInt(obj, j5, i);
    }

    public static long zzf(Object obj, long j5) {
        return zzf.zza.getLong(obj, j5);
    }

    public static void zzg(Object obj, long j5, long j6) {
        zzf.zza.putLong(obj, j5, j6);
    }

    public static boolean zzh(Object obj, long j5) {
        return zzf.zzb(obj, j5);
    }

    public static void zzi(Object obj, long j5, boolean z4) {
        zzf.zzc(obj, j5, z4);
    }

    public static float zzj(Object obj, long j5) {
        return zzf.zzd(obj, j5);
    }

    public static void zzk(Object obj, long j5, float f5) {
        zzf.zze(obj, j5, f5);
    }

    public static double zzl(Object obj, long j5) {
        return zzf.zzf(obj, j5);
    }

    public static void zzm(Object obj, long j5, double d2) {
        zzf.zzg(obj, j5, d2);
    }

    public static Object zzn(Object obj, long j5) {
        return zzf.zza.getObject(obj, j5);
    }

    public static void zzo(Object obj, long j5, Object obj2) {
        zzf.zza.putObject(obj, j5, obj2);
    }

    public static void zzp(byte[] bArr, long j5, byte b5) {
        zzf.zza(bArr, zza + j5, b5);
    }

    public static byte zzq(long j5) {
        return zzf.zzh(j5);
    }

    public static long zzr(ByteBuffer byteBuffer) {
        zzifz zzifzVar = zzf;
        return zzifzVar.zza.getLong(byteBuffer, zzi);
    }

    public static Unsafe zzs() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzifw());
        } catch (Throwable unused) {
            unsafe = null;
        }
        if (unsafe == null) {
            return null;
        }
        try {
            unsafe.arrayBaseOffset(byte[].class);
            return unsafe;
        } catch (Exception unused2) {
            Logger.getLogger(zziga.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "getUnsafe", "As part of the planned removal, sun.misc.Unsafe is available in the current environment but configured to throw on use. Protobuf will continue without using it, but with slightly reduced performance. --sun-misc-unsafe-memory-access=allow is likely available to opt back in if desired. A later Protobuf version release will stop using sun.misc.Unsafe entirely.");
            return null;
        }
    }

    public static boolean zzt(Class cls) {
        int i = zzibm.zza;
        try {
            Class cls2 = zzd;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static /* synthetic */ boolean zzw(Object obj, long j5) {
        return ((byte) ((zzf.zza.getInt(obj, (-4) & j5) >>> ((int) (((~j5) & 3) << 3))) & 255)) != 0;
    }

    public static /* synthetic */ boolean zzx(Object obj, long j5) {
        return ((byte) ((zzf.zza.getInt(obj, (-4) & j5) >>> ((int) ((j5 & 3) << 3))) & 255)) != 0;
    }
}
