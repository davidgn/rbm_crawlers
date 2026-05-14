package com.google.android.gms.internal.p002firebaseauthapi;

import java.lang.reflect.Type;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaap  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzaap {
    private static final String zza = "com.google.android.gms.internal.firebase-auth-api.zzaap";

    private zzaap() {
    }

    public static Object zza(String str, Type type) {
        if (type != String.class) {
            if (type != Void.class) {
                try {
                    try {
                        return ((zzaar) ((Class) type).getConstructor(null).newInstance(null)).zza(str);
                    } catch (Exception e5) {
                        throw new zzyi("Json conversion failed! ".concat(String.valueOf(e5.getMessage())), e5);
                    }
                } catch (Exception e6) {
                    throw new zzyi("Instantiation of JsonResponse failed! ".concat(type.toString()), e6);
                }
            }
            return null;
        }
        try {
            zzach zzachVar = new zzach();
            zzachVar.zzb(str);
            if (zzachVar.zzd()) {
                return zzachVar.zzc();
            }
            throw new zzyi("No error message: " + str);
        } catch (Exception e7) {
            throw new zzyi("Json conversion failed! ".concat(String.valueOf(e7.getMessage())), e7);
        }
    }
}
