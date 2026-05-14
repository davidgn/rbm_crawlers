package Y3;

import java.io.Serializable;
/* loaded from: classes2.dex */
public final class e implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final Object f3425a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f3426b;

    public e(Object obj, Object obj2) {
        this.f3425a = obj;
        this.f3426b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            return kotlin.jvm.internal.i.a(this.f3425a, eVar.f3425a) && kotlin.jvm.internal.i.a(this.f3426b, eVar.f3426b);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f3425a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f3426b;
        return hashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f3425a + ", " + this.f3426b + ')';
    }
}
