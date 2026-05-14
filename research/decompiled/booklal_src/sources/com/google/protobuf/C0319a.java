package com.google.protobuf;

import java.io.FilterInputStream;
import java.io.InputStream;
import y1.C0988e;
/* renamed from: com.google.protobuf.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0319a extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6677a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f6678b;

    public C0319a(C0988e c0988e) {
        super(c0988e);
        this.f6678b = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        switch (this.f6677a) {
            case 0:
                return Math.min(super.available(), this.f6678b);
            default:
                int i = this.f6678b;
                return i == Integer.MIN_VALUE ? super.available() : Math.min(i, super.available());
        }
    }

    public long b(long j5) {
        int i = this.f6678b;
        if (i == 0) {
            return -1L;
        }
        return (i == Integer.MIN_VALUE || j5 <= ((long) i)) ? j5 : i;
    }

    public void c(long j5) {
        int i = this.f6678b;
        if (i == Integer.MIN_VALUE || j5 == -1) {
            return;
        }
        this.f6678b = (int) (i - j5);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        switch (this.f6677a) {
            case 1:
                synchronized (this) {
                    super.mark(i);
                    this.f6678b = i;
                }
                return;
            default:
                super.mark(i);
                return;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        switch (this.f6677a) {
            case 0:
                if (this.f6678b <= 0) {
                    return -1;
                }
                int read = super.read();
                if (read >= 0) {
                    this.f6678b--;
                    return read;
                }
                return read;
            default:
                if (b(1L) == -1) {
                    return -1;
                }
                int read2 = super.read();
                c(1L);
                return read2;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        switch (this.f6677a) {
            case 1:
                synchronized (this) {
                    super.reset();
                    this.f6678b = Integer.MIN_VALUE;
                }
                return;
            default:
                super.reset();
                return;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j5) {
        switch (this.f6677a) {
            case 0:
                int skip = (int) super.skip(Math.min(j5, this.f6678b));
                if (skip >= 0) {
                    this.f6678b -= skip;
                }
                return skip;
            default:
                long b5 = b(j5);
                if (b5 == -1) {
                    return 0L;
                }
                long skip2 = super.skip(b5);
                c(skip2);
                return skip2;
        }
    }

    public C0319a(InputStream inputStream, int i) {
        super(inputStream);
        this.f6678b = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i4) {
        switch (this.f6677a) {
            case 0:
                int i5 = this.f6678b;
                if (i5 <= 0) {
                    return -1;
                }
                int read = super.read(bArr, i, Math.min(i4, i5));
                if (read >= 0) {
                    this.f6678b -= read;
                    return read;
                }
                return read;
            default:
                int b5 = (int) b(i4);
                if (b5 == -1) {
                    return -1;
                }
                int read2 = super.read(bArr, i, b5);
                c(read2);
                return read2;
        }
    }
}
