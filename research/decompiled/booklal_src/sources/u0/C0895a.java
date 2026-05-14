package u0;
/* renamed from: u0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0895a {

    /* renamed from: a  reason: collision with root package name */
    public int f10760a;

    /* renamed from: b  reason: collision with root package name */
    public int f10761b;

    /* renamed from: c  reason: collision with root package name */
    public int f10762c;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0895a) {
            C0895a c0895a = (C0895a) obj;
            int i = this.f10760a;
            if (i != c0895a.f10760a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f10762c - this.f10761b) == 1 && this.f10762c == c0895a.f10761b && this.f10761b == c0895a.f10762c) {
                return true;
            }
            return this.f10762c == c0895a.f10762c && this.f10761b == c0895a.f10761b;
        }
        return false;
    }

    public final int hashCode() {
        return (((this.f10760a * 31) + this.f10761b) * 31) + this.f10762c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i = this.f10760a;
        sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
        sb.append(",s:");
        sb.append(this.f10761b);
        sb.append("c:");
        return e1.i.b(this.f10762c, ",p:null]", sb);
    }
}
