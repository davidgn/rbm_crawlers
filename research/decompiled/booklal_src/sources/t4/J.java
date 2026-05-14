package t4;
/* loaded from: classes2.dex */
public final class J implements T {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f10446a;

    public J(boolean z4) {
        this.f10446a = z4;
    }

    @Override // t4.T
    public final boolean c() {
        return this.f10446a;
    }

    @Override // t4.T
    public final j0 d() {
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Empty{");
        sb.append(this.f10446a ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
