package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzifs extends RuntimeException {
    public zzifs(zzieo zzieoVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzids zza() {
        return new zzids(getMessage());
    }
}
