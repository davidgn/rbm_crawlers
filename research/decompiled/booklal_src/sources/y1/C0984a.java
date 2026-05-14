package y1;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: y1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0984a extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    public final ByteBuffer f11529a;

    /* renamed from: b  reason: collision with root package name */
    public int f11530b = -1;

    public C0984a(ByteBuffer byteBuffer) {
        this.f11529a = byteBuffer;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f11529a.remaining();
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i) {
        this.f11530b = this.f11529a.position();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        ByteBuffer byteBuffer = this.f11529a;
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.get() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        int i = this.f11530b;
        if (i == -1) {
            throw new IOException("Cannot reset to unset mark position");
        }
        this.f11529a.position(i);
    }

    @Override // java.io.InputStream
    public final long skip(long j5) {
        ByteBuffer byteBuffer = this.f11529a;
        if (byteBuffer.hasRemaining()) {
            long min = Math.min(j5, byteBuffer.remaining());
            byteBuffer.position((int) (byteBuffer.position() + min));
            return min;
        }
        return -1L;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i4) {
        ByteBuffer byteBuffer = this.f11529a;
        if (byteBuffer.hasRemaining()) {
            int min = Math.min(i4, byteBuffer.remaining());
            byteBuffer.get(bArr, i, min);
            return min;
        }
        return -1;
    }
}
