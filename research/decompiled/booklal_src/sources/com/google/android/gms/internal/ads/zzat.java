package com.google.android.gms.internal.ads;

import e1.i;
import java.io.IOException;
/* loaded from: classes.dex */
public class zzat extends IOException {
    public final boolean zza;
    public final int zzb;

    public zzat(String str, Throwable th, boolean z4, int i) {
        super(str, th);
        this.zza = z4;
        this.zzb = i;
    }

    public static zzat zza(String str, Throwable th) {
        return new zzat(str, th, true, 0);
    }

    public static zzat zzb(String str, Throwable th) {
        return new zzat(str, th, true, 1);
    }

    public static zzat zzc(String str) {
        return new zzat(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        String concat = message != null ? message.concat(" ") : "";
        boolean z4 = this.zza;
        int i = this.zzb;
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + String.valueOf(z4).length() + concat.length() + 20 + 11 + 1);
        sb.append(concat);
        sb.append("{contentIsMalformed=");
        sb.append(z4);
        sb.append(", dataType=");
        return i.b(i, "}", sb);
    }
}
