package J2;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes2.dex */
public final class h implements g, Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final List f1192a;

    public h(List list) {
        this.f1192a = list;
    }

    @Override // J2.g
    public final boolean apply(Object obj) {
        int i = 0;
        while (true) {
            List list = this.f1192a;
            if (i >= list.size()) {
                return true;
            }
            if (!((g) list.get(i)).apply(obj)) {
                return false;
            }
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.f1192a.equals(((h) obj).f1192a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1192a.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Predicates.and(");
        boolean z4 = true;
        for (Object obj : this.f1192a) {
            if (!z4) {
                sb.append(',');
            }
            sb.append(obj);
            z4 = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
