package l3;

import java.util.Arrays;
/* loaded from: classes2.dex */
public final class I1 {

    /* renamed from: a  reason: collision with root package name */
    public final j3.T f8886a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f8887b;

    public I1(j3.T t2, Object obj) {
        this.f8886a = t2;
        this.f8887b = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || I1.class != obj.getClass()) {
            return false;
        }
        I1 i12 = (I1) obj;
        return W2.B.k(this.f8886a, i12.f8886a) && W2.B.k(this.f8887b, i12.f8887b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f8886a, this.f8887b});
    }

    public final String toString() {
        E4.d F5 = S4.b.F(this);
        F5.d(this.f8886a, "provider");
        F5.d(this.f8887b, "config");
        return F5.toString();
    }
}
