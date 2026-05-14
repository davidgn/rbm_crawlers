package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Objects;
import javax.crypto.Mac;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhzm extends ThreadLocal {
    final /* synthetic */ zzhzn zza;

    public zzhzm(zzhzn zzhznVar) {
        Objects.requireNonNull(zzhznVar);
        this.zza = zzhznVar;
    }

    @Override // java.lang.ThreadLocal
    /* renamed from: zza */
    public final Mac initialValue() {
        try {
            zzhyy zzhyyVar = zzhyy.zzb;
            zzhzn zzhznVar = this.zza;
            Mac mac = (Mac) zzhyyVar.zzb(zzhznVar.zzb());
            mac.init(zzhznVar.zzc());
            return mac;
        } catch (GeneralSecurityException e5) {
            throw new IllegalStateException(e5);
        }
    }
}
