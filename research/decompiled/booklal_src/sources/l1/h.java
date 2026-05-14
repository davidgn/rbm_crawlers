package l1;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public final class h implements k, b1.f, c1.g {

    /* renamed from: a  reason: collision with root package name */
    public final ByteBuffer f8707a;

    public h() {
        this.f8707a = ByteBuffer.allocate(4);
    }

    @Override // c1.g
    public Object a() {
        ByteBuffer byteBuffer = this.f8707a;
        byteBuffer.position(0);
        return byteBuffer;
    }

    @Override // c1.g
    public void b() {
    }

    @Override // b1.f
    public void c(byte[] bArr, Object obj, MessageDigest messageDigest) {
        Integer num = (Integer) obj;
        if (num == null) {
            return;
        }
        messageDigest.update(bArr);
        synchronized (this.f8707a) {
            this.f8707a.position(0);
            messageDigest.update(this.f8707a.putInt(num.intValue()).array());
        }
    }

    @Override // l1.k
    public int d() {
        return (n() << 8) | n();
    }

    @Override // l1.k
    public long e(long j5) {
        ByteBuffer byteBuffer = this.f8707a;
        int min = (int) Math.min(byteBuffer.remaining(), j5);
        byteBuffer.position(byteBuffer.position() + min);
        return min;
    }

    @Override // l1.k
    public short n() {
        ByteBuffer byteBuffer = this.f8707a;
        if (byteBuffer.remaining() >= 1) {
            return (short) (byteBuffer.get() & 255);
        }
        throw new j();
    }

    public h(ByteBuffer byteBuffer, int i) {
        switch (i) {
            case 2:
                this.f8707a = byteBuffer;
                return;
            default:
                this.f8707a = byteBuffer;
                byteBuffer.order(ByteOrder.BIG_ENDIAN);
                return;
        }
    }
}
