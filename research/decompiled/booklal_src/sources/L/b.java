package L;

import java.util.Objects;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final Object f1620a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f1621b;

    public b(Object obj, Object obj2) {
        this.f1620a = obj;
        this.f1621b = obj2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            return Objects.equals(bVar.f1620a, this.f1620a) && Objects.equals(bVar.f1621b, this.f1621b);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f1620a;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f1621b;
        return (obj2 != null ? obj2.hashCode() : 0) ^ hashCode;
    }

    public final String toString() {
        return "Pair{" + this.f1620a + " " + this.f1621b + "}";
    }
}
