package com.google.android.recaptcha.internal;
/* loaded from: classes2.dex */
public abstract class zzdp implements Iterable {
    private final zzde zza = zzde.zza();

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        boolean z4 = true;
        for (Object obj : this) {
            if (!z4) {
                sb.append(", ");
            }
            sb.append(obj);
            z4 = false;
        }
        sb.append(']');
        return sb.toString();
    }
}
