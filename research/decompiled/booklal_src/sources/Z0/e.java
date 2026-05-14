package Z0;

import java.io.Closeable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public final class e implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final FileInputStream f3458a;

    /* renamed from: b  reason: collision with root package name */
    public final Charset f3459b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f3460c;

    /* renamed from: d  reason: collision with root package name */
    public int f3461d;

    /* renamed from: e  reason: collision with root package name */
    public int f3462e;

    public e(FileInputStream fileInputStream, Charset charset) {
        if (charset == null) {
            throw null;
        }
        if (!charset.equals(f.f3463a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f3458a = fileInputStream;
        this.f3459b = charset;
        this.f3460c = new byte[8192];
    }

    public final String b() {
        int i;
        synchronized (this.f3458a) {
            try {
                byte[] bArr = this.f3460c;
                if (bArr == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f3461d >= this.f3462e) {
                    int read = this.f3458a.read(bArr, 0, bArr.length);
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f3461d = 0;
                    this.f3462e = read;
                }
                for (int i4 = this.f3461d; i4 != this.f3462e; i4++) {
                    byte[] bArr2 = this.f3460c;
                    if (bArr2[i4] == 10) {
                        int i5 = this.f3461d;
                        if (i4 != i5) {
                            i = i4 - 1;
                            if (bArr2[i] == 13) {
                                String str = new String(bArr2, i5, i - i5, this.f3459b.name());
                                this.f3461d = i4 + 1;
                                return str;
                            }
                        }
                        i = i4;
                        String str2 = new String(bArr2, i5, i - i5, this.f3459b.name());
                        this.f3461d = i4 + 1;
                        return str2;
                    }
                }
                d dVar = new d(this, (this.f3462e - this.f3461d) + 80);
                while (true) {
                    byte[] bArr3 = this.f3460c;
                    int i6 = this.f3461d;
                    dVar.write(bArr3, i6, this.f3462e - i6);
                    this.f3462e = -1;
                    byte[] bArr4 = this.f3460c;
                    int read2 = this.f3458a.read(bArr4, 0, bArr4.length);
                    if (read2 == -1) {
                        throw new EOFException();
                    }
                    this.f3461d = 0;
                    this.f3462e = read2;
                    for (int i7 = 0; i7 != this.f3462e; i7++) {
                        byte[] bArr5 = this.f3460c;
                        if (bArr5[i7] == 10) {
                            int i8 = this.f3461d;
                            if (i7 != i8) {
                                dVar.write(bArr5, i8, i7 - i8);
                            }
                            this.f3461d = i7 + 1;
                            return dVar.toString();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f3458a) {
            try {
                if (this.f3460c != null) {
                    this.f3460c = null;
                    this.f3458a.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
