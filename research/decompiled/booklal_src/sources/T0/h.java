package T0;

import s.AbstractC0824e;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public String f2630a;

    /* renamed from: b  reason: collision with root package name */
    public int f2631b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (this.f2631b != hVar.f2631b) {
                return false;
            }
            return this.f2630a.equals(hVar.f2630a);
        }
        return false;
    }

    public final int hashCode() {
        return AbstractC0824e.d(this.f2631b) + (this.f2630a.hashCode() * 31);
    }
}
