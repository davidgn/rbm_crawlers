package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzao  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzao {
    Object[] zza;
    int zzb;
    zzan zzc;

    public zzao() {
        this(4);
    }

    private final void zzb(int i) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        int i4 = i + i;
        if (i4 > length) {
            this.zza = Arrays.copyOf(objArr, zzah.zza(length, i4));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzao zza(Iterable iterable) {
        if (iterable instanceof Collection) {
            zzb(iterable.size() + this.zzb);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            zzb(this.zzb + 1);
            zzae.zza(key, value);
            Object[] objArr = this.zza;
            int i = this.zzb;
            int i4 = i + i;
            objArr[i4] = key;
            objArr[i4 + 1] = value;
            this.zzb = i + 1;
        }
        return this;
    }

    public zzao(int i) {
        this.zza = new Object[i + i];
        this.zzb = 0;
    }
}
