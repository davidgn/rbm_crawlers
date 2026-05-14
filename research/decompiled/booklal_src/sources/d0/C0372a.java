package d0;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
/* renamed from: d0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0372a extends InputStream implements DataInput {

    /* renamed from: e  reason: collision with root package name */
    public static final ByteOrder f6909e = ByteOrder.LITTLE_ENDIAN;

    /* renamed from: f  reason: collision with root package name */
    public static final ByteOrder f6910f = ByteOrder.BIG_ENDIAN;

    /* renamed from: a  reason: collision with root package name */
    public final DataInputStream f6911a;

    /* renamed from: b  reason: collision with root package name */
    public ByteOrder f6912b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6913c;

    /* renamed from: d  reason: collision with root package name */
    public int f6914d;

    public C0372a(InputStream inputStream) {
        this.f6912b = ByteOrder.BIG_ENDIAN;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f6911a = dataInputStream;
        int available = dataInputStream.available();
        this.f6913c = available;
        this.f6914d = 0;
        dataInputStream.mark(available);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f6911a.available();
    }

    public final void b(long j5) {
        int i = this.f6914d;
        if (i > j5) {
            this.f6914d = 0;
            DataInputStream dataInputStream = this.f6911a;
            dataInputStream.reset();
            dataInputStream.mark(this.f6913c);
        } else {
            j5 -= i;
        }
        int i4 = (int) j5;
        if (skipBytes(i4) != i4) {
            throw new IOException("Couldn't seek up to the byteCount");
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        this.f6914d++;
        return this.f6911a.read();
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() {
        this.f6914d++;
        return this.f6911a.readBoolean();
    }

    @Override // java.io.DataInput
    public final byte readByte() {
        int i = this.f6914d + 1;
        this.f6914d = i;
        if (i <= this.f6913c) {
            int read = this.f6911a.read();
            if (read >= 0) {
                return (byte) read;
            }
            throw new EOFException();
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final char readChar() {
        this.f6914d += 2;
        return this.f6911a.readChar();
    }

    @Override // java.io.DataInput
    public final double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public final float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i, int i4) {
        int i5 = this.f6914d + i4;
        this.f6914d = i5;
        if (i5 <= this.f6913c) {
            if (this.f6911a.read(bArr, i, i4) != i4) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
            return;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final int readInt() {
        int i = this.f6914d + 4;
        this.f6914d = i;
        if (i <= this.f6913c) {
            DataInputStream dataInputStream = this.f6911a;
            int read = dataInputStream.read();
            int read2 = dataInputStream.read();
            int read3 = dataInputStream.read();
            int read4 = dataInputStream.read();
            if ((read | read2 | read3 | read4) >= 0) {
                ByteOrder byteOrder = this.f6912b;
                if (byteOrder == f6909e) {
                    return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == f6910f) {
                    return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                }
                throw new IOException("Invalid byte order: " + this.f6912b);
            }
            throw new EOFException();
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final String readLine() {
        Log.d("ExifInterface", "Currently unsupported");
        return null;
    }

    @Override // java.io.DataInput
    public final long readLong() {
        int i = this.f6914d + 8;
        this.f6914d = i;
        if (i <= this.f6913c) {
            DataInputStream dataInputStream = this.f6911a;
            int read = dataInputStream.read();
            int read2 = dataInputStream.read();
            int read3 = dataInputStream.read();
            int read4 = dataInputStream.read();
            int read5 = dataInputStream.read();
            int read6 = dataInputStream.read();
            int read7 = dataInputStream.read();
            int read8 = dataInputStream.read();
            if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
                ByteOrder byteOrder = this.f6912b;
                if (byteOrder == f6909e) {
                    return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == f6910f) {
                    return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                }
                throw new IOException("Invalid byte order: " + this.f6912b);
            }
            throw new EOFException();
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final short readShort() {
        int i = this.f6914d + 2;
        this.f6914d = i;
        if (i <= this.f6913c) {
            DataInputStream dataInputStream = this.f6911a;
            int read = dataInputStream.read();
            int read2 = dataInputStream.read();
            if ((read | read2) >= 0) {
                ByteOrder byteOrder = this.f6912b;
                if (byteOrder == f6909e) {
                    return (short) ((read2 << 8) + read);
                }
                if (byteOrder == f6910f) {
                    return (short) ((read << 8) + read2);
                }
                throw new IOException("Invalid byte order: " + this.f6912b);
            }
            throw new EOFException();
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final String readUTF() {
        this.f6914d += 2;
        return this.f6911a.readUTF();
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() {
        this.f6914d++;
        return this.f6911a.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() {
        int i = this.f6914d + 2;
        this.f6914d = i;
        if (i <= this.f6913c) {
            DataInputStream dataInputStream = this.f6911a;
            int read = dataInputStream.read();
            int read2 = dataInputStream.read();
            if ((read | read2) >= 0) {
                ByteOrder byteOrder = this.f6912b;
                if (byteOrder == f6909e) {
                    return (read2 << 8) + read;
                }
                if (byteOrder == f6910f) {
                    return (read << 8) + read2;
                }
                throw new IOException("Invalid byte order: " + this.f6912b);
            }
            throw new EOFException();
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i) {
        int min = Math.min(i, this.f6913c - this.f6914d);
        int i4 = 0;
        while (i4 < min) {
            i4 += this.f6911a.skipBytes(min - i4);
        }
        this.f6914d += i4;
        return i4;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i4) {
        int read = this.f6911a.read(bArr, i, i4);
        this.f6914d += read;
        return read;
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) {
        int length = this.f6914d + bArr.length;
        this.f6914d = length;
        if (length <= this.f6913c) {
            if (this.f6911a.read(bArr, 0, bArr.length) != bArr.length) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
            return;
        }
        throw new EOFException();
    }

    public C0372a(byte[] bArr) {
        this(new ByteArrayInputStream(bArr));
    }
}
