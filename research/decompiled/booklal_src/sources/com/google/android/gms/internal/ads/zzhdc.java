package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public final class zzhdc {
    private static final CopyOnWriteArrayList zza = new CopyOnWriteArrayList();

    public static zzhdb zza(String str) {
        Iterator it = zza.iterator();
        while (it.hasNext()) {
            zzhdb zzhdbVar = (zzhdb) it.next();
            if (zzhdbVar.zza()) {
                return zzhdbVar;
            }
        }
        throw new GeneralSecurityException("No KMS client does support: ".concat(String.valueOf(str)));
    }
}
