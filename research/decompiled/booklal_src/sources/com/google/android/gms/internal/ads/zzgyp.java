package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.logging.Level;
/* loaded from: classes.dex */
public final class zzgyp implements Closeable {
    private static final zzgyo zzc = zzgyo.zza;
    private final Deque zza = new ArrayDeque(4);
    private Throwable zzb;

    public zzgyp(zzgyo zzgyoVar) {
    }

    public static zzgyp zza() {
        return new zzgyp(zzc);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Throwable th = this.zzb;
        while (true) {
            Deque deque = this.zza;
            if (deque.isEmpty()) {
                break;
            }
            Closeable closeable = (Closeable) deque.removeFirst();
            try {
                closeable.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else if (th != th2) {
                    try {
                        th.addSuppressed(th2);
                    } catch (Throwable unused) {
                        zzgyn.zza.logp(Level.WARNING, "com.google.common.io.Closer", "<init>", "Suppressing exception thrown when closing ".concat(String.valueOf(closeable)), th2);
                    }
                }
            }
        }
        if (this.zzb != null || th == null) {
            return;
        }
        zzgtg.zza(th, IOException.class);
        zzgtg.zzb(th);
        throw new AssertionError(th);
    }

    public final Closeable zzb(Closeable closeable) {
        this.zza.addFirst(closeable);
        return closeable;
    }

    public final RuntimeException zzc(Throwable th) {
        this.zzb = th;
        zzgtg.zza(th, IOException.class);
        zzgtg.zzb(th);
        throw new RuntimeException(th);
    }
}
