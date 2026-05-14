package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes.dex */
public class zzids extends IOException {
    private boolean zza;

    public zzids(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public final void zza() {
        this.zza = true;
    }

    public final boolean zzb() {
        return this.zza;
    }

    public zzids(String str) {
        super(str);
    }

    public zzids(String str, IOException iOException) {
        super("Unable to parse map entry.", iOException);
    }
}
