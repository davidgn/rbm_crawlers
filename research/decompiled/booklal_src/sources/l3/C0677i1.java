package l3;

import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.InvalidMarkException;
/* renamed from: l3.i1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0677i1 extends AbstractC0657c {

    /* renamed from: a  reason: collision with root package name */
    public int f9225a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9226b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f9227c;

    /* renamed from: d  reason: collision with root package name */
    public int f9228d = -1;

    public C0677i1(byte[] bArr, int i, int i4) {
        Z2.l.f(i >= 0, "offset must be >= 0");
        Z2.l.f(i4 >= 0, "length must be >= 0");
        int i5 = i4 + i;
        Z2.l.f(i5 <= bArr.length, "offset + length exceeds array boundary");
        this.f9227c = bArr;
        this.f9225a = i;
        this.f9226b = i5;
    }

    @Override // l3.AbstractC0657c
    public final void c() {
        this.f9228d = this.f9225a;
    }

    @Override // l3.AbstractC0657c
    public final AbstractC0657c f(int i) {
        b(i);
        int i4 = this.f9225a;
        this.f9225a = i4 + i;
        return new C0677i1(this.f9227c, i4, i);
    }

    @Override // l3.AbstractC0657c
    public final void g(int i, byte[] bArr, int i4) {
        System.arraycopy(this.f9227c, this.f9225a, bArr, i, i4);
        this.f9225a += i4;
    }

    @Override // l3.AbstractC0657c
    public final void m(OutputStream outputStream, int i) {
        b(i);
        outputStream.write(this.f9227c, this.f9225a, i);
        this.f9225a += i;
    }

    @Override // l3.AbstractC0657c
    public final void n(ByteBuffer byteBuffer) {
        Z2.l.j(byteBuffer, "dest");
        int remaining = byteBuffer.remaining();
        b(remaining);
        byteBuffer.put(this.f9227c, this.f9225a, remaining);
        this.f9225a += remaining;
    }

    @Override // l3.AbstractC0657c
    public final int q() {
        b(1);
        int i = this.f9225a;
        this.f9225a = i + 1;
        return this.f9227c[i] & 255;
    }

    @Override // l3.AbstractC0657c
    public final int r() {
        return this.f9226b - this.f9225a;
    }

    @Override // l3.AbstractC0657c
    public final void s() {
        int i = this.f9228d;
        if (i == -1) {
            throw new InvalidMarkException();
        }
        this.f9225a = i;
    }

    @Override // l3.AbstractC0657c
    public final void t(int i) {
        b(i);
        this.f9225a += i;
    }
}
