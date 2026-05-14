package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Locale;
/* loaded from: classes.dex */
public final class zzicg extends IOException {
    public zzicg() {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzicg(long j5, long j6, int i, Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat("Pos: " + j5 + ", limit: " + j6 + ", len: " + i), th);
        Locale locale = Locale.US;
    }

    public zzicg(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
