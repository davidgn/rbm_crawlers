package com.google.android.gms.internal.measurement;

import android.net.Uri;
import r.k;
/* loaded from: classes2.dex */
public final class zzhh {
    private final k zza;

    public zzhh(k kVar) {
        this.zza = kVar;
    }

    public final String zza(Uri uri, String str, String str2, String str3) {
        if (uri != null) {
            k kVar = (k) this.zza.getOrDefault(uri.toString(), null);
            if (kVar == null) {
                return null;
            }
            return (String) kVar.getOrDefault("".concat(str3), null);
        }
        return null;
    }
}
