package Y3;

import java.io.Serializable;
/* loaded from: classes2.dex */
public final class g implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final Object f3428a;

    public static final Throwable a(Object obj) {
        if (obj instanceof f) {
            return ((f) obj).f3427a;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            return kotlin.jvm.internal.i.a(this.f3428a, ((g) obj).f3428a);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f3428a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        Object obj = this.f3428a;
        if (obj instanceof f) {
            return ((f) obj).toString();
        }
        return "Success(" + obj + ')';
    }
}
