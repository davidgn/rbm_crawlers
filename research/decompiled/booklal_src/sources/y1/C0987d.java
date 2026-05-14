package y1;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: y1.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0987d extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    public final long f11533a;

    /* renamed from: b  reason: collision with root package name */
    public int f11534b;

    public C0987d(InputStream inputStream, long j5) {
        super(inputStream);
        this.f11533a = j5;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        return (int) Math.max(this.f11533a - this.f11534b, ((FilterInputStream) this).in.available());
    }

    public final void b(int i) {
        if (i >= 0) {
            this.f11534b += i;
            return;
        }
        long j5 = this.f11533a;
        if (j5 - this.f11534b <= 0) {
            return;
        }
        throw new IOException("Failed to read all expected data, expected: " + j5 + ", but read: " + this.f11534b);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        int read;
        read = super.read();
        b(read >= 0 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i, int i4) {
        int read;
        read = super.read(bArr, i, i4);
        b(read);
        return read;
    }
}
