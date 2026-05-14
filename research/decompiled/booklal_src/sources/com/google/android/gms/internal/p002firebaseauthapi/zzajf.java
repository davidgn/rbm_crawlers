package com.google.android.gms.internal.p002firebaseauthapi;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzajf  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzajf {
    static final long zza;
    static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class zzd;
    private static final boolean zze;
    private static final zzaje zzf;
    private static final boolean zzg;
    private static final boolean zzh;

    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x011a  */
    static {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p002firebaseauthapi.zzajf.<clinit>():void");
    }

    private zzajf() {
    }

    private static int zzA(Class cls) {
        if (zzh) {
            return zzf.zza.arrayIndexScale(cls);
        }
        return -1;
    }

    private static Field zzB() {
        int i = zzaer.zza;
        Field zzC = zzC(Buffer.class, "effectiveDirectAddress");
        if (zzC == null) {
            Field zzC2 = zzC(Buffer.class, "address");
            if (zzC2 == null || zzC2.getType() != Long.TYPE) {
                return null;
            }
            return zzC2;
        }
        return zzC;
    }

    private static Field zzC(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzD(Object obj, long j5, byte b5) {
        zzaje zzajeVar = zzf;
        long j6 = (-4) & j5;
        int i = zzajeVar.zza.getInt(obj, j6);
        int i4 = ((~((int) j5)) & 3) << 3;
        zzajeVar.zza.putInt(obj, j6, ((255 & b5) << i4) | (i & (~(255 << i4))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzE(Object obj, long j5, byte b5) {
        zzaje zzajeVar = zzf;
        long j6 = (-4) & j5;
        int i = (((int) j5) & 3) << 3;
        zzajeVar.zza.putInt(obj, j6, ((255 & b5) << i) | (zzajeVar.zza.getInt(obj, j6) & (~(255 << i))));
    }

    public static double zza(Object obj, long j5) {
        return zzf.zza(obj, j5);
    }

    public static float zzb(Object obj, long j5) {
        return zzf.zzb(obj, j5);
    }

    public static int zzc(Object obj, long j5) {
        return zzf.zza.getInt(obj, j5);
    }

    public static long zzd(Object obj, long j5) {
        return zzf.zza.getLong(obj, j5);
    }

    public static Object zze(Class cls) {
        try {
            return zzc.allocateInstance(cls);
        } catch (InstantiationException e5) {
            throw new IllegalStateException(e5);
        }
    }

    public static Object zzf(Object obj, long j5) {
        return zzf.zza.getObject(obj, j5);
    }

    public static Unsafe zzg() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzajb());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* bridge */ /* synthetic */ void zzh(Throwable th) {
        Logger.getLogger(zzajf.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    public static void zzm(Object obj, long j5, boolean z4) {
        zzf.zzc(obj, j5, z4);
    }

    public static void zzn(byte[] bArr, long j5, byte b5) {
        zzf.zzd(bArr, zza + j5, b5);
    }

    public static void zzo(Object obj, long j5, double d2) {
        zzf.zze(obj, j5, d2);
    }

    public static void zzp(Object obj, long j5, float f5) {
        zzf.zzf(obj, j5, f5);
    }

    public static void zzq(Object obj, long j5, int i) {
        zzf.zza.putInt(obj, j5, i);
    }

    public static void zzr(Object obj, long j5, long j6) {
        zzf.zza.putLong(obj, j5, j6);
    }

    public static void zzs(Object obj, long j5, Object obj2) {
        zzf.zza.putObject(obj, j5, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean zzt(Object obj, long j5) {
        return ((byte) ((zzf.zza.getInt(obj, (-4) & j5) >>> ((int) (((~j5) & 3) << 3))) & 255)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean zzu(Object obj, long j5) {
        return ((byte) ((zzf.zza.getInt(obj, (-4) & j5) >>> ((int) ((j5 & 3) << 3))) & 255)) != 0;
    }

    public static boolean zzv(Class cls) {
        int i = zzaer.zza;
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

    public static boolean zzw(Object obj, long j5) {
        return zzf.zzg(obj, j5);
    }

    public static boolean zzx() {
        return zzh;
    }

    public static boolean zzy() {
        return zzg;
    }

    private static int zzz(Class cls) {
        if (zzh) {
            return zzf.zza.arrayBaseOffset(cls);
        }
        return -1;
    }
}
