package y1;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import l1.v;
/* renamed from: y1.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0988e extends InputStream {

    /* renamed from: c  reason: collision with root package name */
    public static final ArrayDeque f11535c;

    /* renamed from: a  reason: collision with root package name */
    public v f11536a;

    /* renamed from: b  reason: collision with root package name */
    public IOException f11537b;

    static {
        char[] cArr = AbstractC0994k.f11549a;
        f11535c = new ArrayDeque(0);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f11536a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f11536a.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f11536a.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        this.f11536a.getClass();
        return true;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        try {
            return this.f11536a.read(bArr);
        } catch (IOException e5) {
            this.f11537b = e5;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.f11536a.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j5) {
        try {
            return this.f11536a.skip(j5);
        } catch (IOException e5) {
            this.f11537b = e5;
            return 0L;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i4) {
        try {
            return this.f11536a.read(bArr, i, i4);
        } catch (IOException e5) {
            this.f11537b = e5;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        try {
            return this.f11536a.read();
        } catch (IOException e5) {
            this.f11537b = e5;
            return -1;
        }
    }
}
