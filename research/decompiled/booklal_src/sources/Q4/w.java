package Q4;

import java.io.Closeable;
import java.io.Flushable;
/* loaded from: classes2.dex */
public interface w extends Closeable, Flushable {
    A a();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();

    void o(g gVar, long j5);
}
