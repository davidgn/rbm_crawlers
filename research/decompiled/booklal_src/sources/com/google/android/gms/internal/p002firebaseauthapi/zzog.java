package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzog  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzog {
    private final zznz zza;
    private final List zzb;
    private final Integer zzc;

    public /* synthetic */ zzog(zznz zznzVar, List list, Integer num, zzof zzofVar) {
        this.zza = zznzVar;
        this.zzb = list;
        this.zzc = num;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzog) {
            zzog zzogVar = (zzog) obj;
            if (this.zza.equals(zzogVar.zza) && this.zzb.equals(zzogVar.zzb)) {
                Integer num = this.zzc;
                Integer num2 = zzogVar.zzc;
                if (num == num2) {
                    return true;
                }
                if (num != null && num.equals(num2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, this.zzb});
    }

    public final String toString() {
        return String.format("(annotations=%s, entries=%s, primaryKeyId=%s)", this.zza, this.zzb, this.zzc);
    }
}
