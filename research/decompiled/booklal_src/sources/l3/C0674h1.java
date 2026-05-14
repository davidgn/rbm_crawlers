package l3;

import java.io.InputStream;
/* renamed from: l3.h1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0674h1 extends InputStream implements j3.M {

    /* renamed from: a  reason: collision with root package name */
    public AbstractC0657c f9222a;

    @Override // java.io.InputStream
    public final int available() {
        return this.f9222a.r();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f9222a.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f9222a.c();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f9222a.e();
    }

    @Override // java.io.InputStream
    public final int read() {
        AbstractC0657c abstractC0657c = this.f9222a;
        if (abstractC0657c.r() == 0) {
            return -1;
        }
        return abstractC0657c.q();
    }

    @Override // java.io.InputStream
    public final void reset() {
        this.f9222a.s();
    }

    @Override // java.io.InputStream
    public final long skip(long j5) {
        AbstractC0657c abstractC0657c = this.f9222a;
        int min = (int) Math.min(abstractC0657c.r(), j5);
        abstractC0657c.t(min);
        return min;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i4) {
        AbstractC0657c abstractC0657c = this.f9222a;
        if (abstractC0657c.r() == 0) {
            return -1;
        }
        int min = Math.min(abstractC0657c.r(), i4);
        abstractC0657c.g(i, bArr, min);
        return min;
    }
}
