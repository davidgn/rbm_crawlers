package c1;

import java.io.FilterInputStream;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class j extends FilterInputStream {

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f4847c = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* renamed from: d  reason: collision with root package name */
    public static final int f4848d = 31;

    /* renamed from: a  reason: collision with root package name */
    public final byte f4849a;

    /* renamed from: b  reason: collision with root package name */
    public int f4850b;

    public j(InputStream inputStream, int i) {
        super(inputStream);
        if (i < -1 || i > 8) {
            throw new IllegalArgumentException(e1.i.a(i, "Cannot add invalid orientation: "));
        }
        this.f4849a = (byte) i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read;
        int i;
        int i4 = this.f4850b;
        if (i4 < 2 || i4 > (i = f4848d)) {
            read = super.read();
        } else if (i4 == i) {
            read = this.f4849a;
        } else {
            read = f4847c[i4 - 2] & 255;
        }
        if (read != -1) {
            this.f4850b++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j5) {
        long skip = super.skip(j5);
        if (skip > 0) {
            this.f4850b = (int) (this.f4850b + skip);
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i4) {
        int i5;
        int i6 = this.f4850b;
        int i7 = f4848d;
        if (i6 > i7) {
            i5 = super.read(bArr, i, i4);
        } else if (i6 == i7) {
            bArr[i] = this.f4849a;
            i5 = 1;
        } else if (i6 < 2) {
            i5 = super.read(bArr, i, 2 - i6);
        } else {
            int min = Math.min(i7 - i6, i4);
            System.arraycopy(f4847c, this.f4850b - 2, bArr, i, min);
            i5 = min;
        }
        if (i5 > 0) {
            this.f4850b += i5;
        }
        return i5;
    }
}
