package l1;

import android.media.MediaDataSource;
import java.nio.ByteBuffer;
/* renamed from: l1.A  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0616A extends MediaDataSource {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ByteBuffer f8687a;

    public C0616A(ByteBuffer byteBuffer) {
        this.f8687a = byteBuffer;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return this.f8687a.limit();
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j5, byte[] bArr, int i, int i4) {
        ByteBuffer byteBuffer = this.f8687a;
        if (j5 >= byteBuffer.limit()) {
            return -1;
        }
        byteBuffer.position((int) j5);
        int min = Math.min(i4, byteBuffer.remaining());
        byteBuffer.get(bArr, i, min);
        return min;
    }
}
