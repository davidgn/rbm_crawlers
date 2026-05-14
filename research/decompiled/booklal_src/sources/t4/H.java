package t4;
/* loaded from: classes2.dex */
public final class H implements l0, k4.l {

    /* renamed from: a  reason: collision with root package name */
    public final G f10443a;

    public H(G g5) {
        this.f10443a = g5;
    }

    public final void a(Throwable th) {
        this.f10443a.b();
    }

    @Override // k4.l
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        a((Throwable) obj);
        return Y3.j.f3433a;
    }

    public final String toString() {
        return "DisposeOnCancel[" + this.f10443a + ']';
    }
}
