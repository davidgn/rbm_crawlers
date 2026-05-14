package S1;

import android.util.Base64;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final String f2562a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f2563b;

    /* renamed from: c  reason: collision with root package name */
    public final P1.c f2564c;

    public j(String str, byte[] bArr, P1.c cVar) {
        this.f2562a = str;
        this.f2563b = bArr;
        this.f2564c = cVar;
    }

    public static J2.e a() {
        J2.e eVar = new J2.e(3);
        eVar.f1190d = P1.c.f2210a;
        return eVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            return this.f2562a.equals(jVar.f2562a) && Arrays.equals(this.f2563b, jVar.f2563b) && this.f2564c.equals(jVar.f2564c);
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f2562a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f2563b)) * 1000003) ^ this.f2564c.hashCode();
    }

    public final String toString() {
        byte[] bArr = this.f2563b;
        String encodeToString = bArr == null ? "" : Base64.encodeToString(bArr, 2);
        return "TransportContext(" + this.f2562a + ", " + this.f2564c + ", " + encodeToString + ")";
    }
}
