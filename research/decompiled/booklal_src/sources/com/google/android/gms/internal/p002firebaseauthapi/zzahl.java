package com.google.android.gms.internal.p002firebaseauthapi;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahl  reason: invalid package */
/* loaded from: classes2.dex */
final class zzahl {
    private static final zzahk zza;
    private static final zzahk zzb;

    static {
        zzahk zzahkVar = null;
        try {
            zzahkVar = (zzahk) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzahkVar;
        zzb = new zzahk();
    }

    public static zzahk zza() {
        return zza;
    }

    public static zzahk zzb() {
        return zzb;
    }
}
