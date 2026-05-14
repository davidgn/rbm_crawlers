package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public final class zzgtg {
    public static final /* synthetic */ int zza = 0;
    private static final Object zzb;

    static {
        Object zzc = zzc();
        zzb = zzc;
        if (zzc != null) {
            zze("getStackTraceElement", Throwable.class, Integer.TYPE);
        }
        if (zzc == null) {
            return;
        }
        zzd(zzc);
    }

    public static void zza(Throwable th, Class cls) {
        if (cls.isInstance(th)) {
            throw ((Throwable) cls.cast(th));
        }
    }

    public static void zzb(Throwable th) {
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
    }

    private static Object zzc() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", null).invoke(null, null);
        } catch (ThreadDeath e5) {
            throw e5;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method zzd(Object obj) {
        try {
            Method zze = zze("getStackTraceDepth", Throwable.class);
            if (zze == null) {
                return null;
            }
            zze.invoke(obj, new Throwable());
            return zze;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    private static Method zze(String str, Class... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e5) {
            throw e5;
        } catch (Throwable unused) {
            return null;
        }
    }
}
