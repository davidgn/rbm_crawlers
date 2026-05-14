package l1;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public final class i implements b1.f {

    /* renamed from: a  reason: collision with root package name */
    public final ByteBuffer f8708a;

    public i() {
        this.f8708a = ByteBuffer.allocate(8);
    }

    public short a(int i) {
        ByteBuffer byteBuffer = this.f8708a;
        if (byteBuffer.remaining() - i >= 2) {
            return byteBuffer.getShort(i);
        }
        return (short) -1;
    }

    @Override // b1.f
    public void c(byte[] bArr, Object obj, MessageDigest messageDigest) {
        Long l5 = (Long) obj;
        messageDigest.update(bArr);
        synchronized (this.f8708a) {
            this.f8708a.position(0);
            messageDigest.update(this.f8708a.putLong(l5.longValue()).array());
        }
    }

    public i(byte[] bArr, int i) {
        this.f8708a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
    }
}
