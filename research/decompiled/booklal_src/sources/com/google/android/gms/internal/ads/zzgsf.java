package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzgsf {
    private final String zza;
    private final zzgse zzb;
    private zzgse zzc;

    public /* synthetic */ zzgsf(String str, byte[] bArr) {
        zzgse zzgseVar = new zzgse();
        this.zzb = zzgseVar;
        this.zzc = zzgseVar;
        str.getClass();
        this.zza = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzgse zzgseVar = this.zzb.zzb;
        String str = "";
        while (zzgseVar != null) {
            Object obj = zzgseVar.zza;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            zzgseVar = zzgseVar.zzb;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzgsf zza(Object obj) {
        zzgse zzgseVar = new zzgse();
        this.zzc.zzb = zzgseVar;
        this.zzc = zzgseVar;
        zzgseVar.zza = obj;
        return this;
    }
}
