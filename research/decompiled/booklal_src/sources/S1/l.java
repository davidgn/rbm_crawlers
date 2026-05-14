package S1;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final P1.b f2572a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f2573b;

    public l(P1.b bVar, byte[] bArr) {
        if (bVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f2572a = bVar;
        this.f2573b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (this.f2572a.equals(lVar.f2572a)) {
                return Arrays.equals(this.f2573b, lVar.f2573b);
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f2572a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f2573b);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f2572a + ", bytes=[...]}";
    }
}
