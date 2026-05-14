package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzhnb extends RuntimeException {
    public zzhnb(String str) {
        super(str);
    }

    public static Object zza(zzhna zzhnaVar) {
        try {
            return zzhnaVar.zza();
        } catch (Exception e5) {
            throw new zzhnb(e5);
        }
    }

    public zzhnb(String str, Throwable th) {
        super(str, th);
    }

    public zzhnb(Throwable th) {
        super(th);
    }
}
