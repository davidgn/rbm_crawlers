package Y3;

import java.io.Serializable;
/* loaded from: classes2.dex */
public final class f implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f3427a;

    public f(Throwable exception) {
        kotlin.jvm.internal.i.f(exception, "exception");
        this.f3427a = exception;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            if (kotlin.jvm.internal.i.a(this.f3427a, ((f) obj).f3427a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f3427a.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.f3427a + ')';
    }
}
