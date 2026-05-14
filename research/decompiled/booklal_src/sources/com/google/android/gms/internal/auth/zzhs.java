package com.google.android.gms.internal.auth;

import java.util.List;
/* loaded from: classes.dex */
public final class zzhs extends zzev implements zzfy {
    private static final zzhs zzb;
    private zzez zzd = zzev.zzf();

    static {
        zzhs zzhsVar = new zzhs();
        zzb = zzhsVar;
        zzev.zzk(zzhs.class, zzhsVar);
    }

    private zzhs() {
    }

    public static zzhs zzp(byte[] bArr) {
        return (zzhs) zzev.zzd(zzb, bArr);
    }

    @Override // com.google.android.gms.internal.auth.zzev
    public final Object zzn(int i, Object obj, Object obj2) {
        int i4 = i - 1;
        if (i4 != 0) {
            if (i4 == 2) {
                return zzev.zzh(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"zzd"});
            } else if (i4 != 3) {
                if (i4 != 4) {
                    if (i4 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzhr(null);
            } else {
                return new zzhs();
            }
        }
        return (byte) 1;
    }

    public final List zzq() {
        return this.zzd;
    }
}
