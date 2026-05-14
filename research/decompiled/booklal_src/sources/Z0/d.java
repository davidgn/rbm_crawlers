package Z0;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
/* loaded from: classes.dex */
public final class d extends ByteArrayOutputStream {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f3457a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e eVar, int i) {
        super(i);
        this.f3457a = eVar;
    }

    @Override // java.io.ByteArrayOutputStream
    public final String toString() {
        int i = ((ByteArrayOutputStream) this).count;
        if (i > 0 && ((ByteArrayOutputStream) this).buf[i - 1] == 13) {
            i--;
        }
        try {
            return new String(((ByteArrayOutputStream) this).buf, 0, i, this.f3457a.f3459b.name());
        } catch (UnsupportedEncodingException e5) {
            throw new AssertionError(e5);
        }
    }
}
