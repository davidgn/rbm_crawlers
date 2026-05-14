package l3;

import java.io.Closeable;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* renamed from: l3.c  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0657c implements Closeable {
    public final void b(int i) {
        if (r() < i) {
            throw new IndexOutOfBoundsException();
        }
    }

    public void c() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public boolean e() {
        return this instanceof C0677i1;
    }

    public abstract AbstractC0657c f(int i);

    public abstract void g(int i, byte[] bArr, int i4);

    public abstract void m(OutputStream outputStream, int i);

    public abstract void n(ByteBuffer byteBuffer);

    public abstract int q();

    public abstract int r();

    public void s() {
        throw new UnsupportedOperationException();
    }

    public abstract void t(int i);
}
