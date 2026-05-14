package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public abstract class zzilm {
    public static zzilm zzb(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new zzilh(cls.getSimpleName()) : new zzilj(cls.getSimpleName());
    }

    public abstract void zza(String str);
}
