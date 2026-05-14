package G3;

import z0.InterfaceC1002c;
/* loaded from: classes2.dex */
public final class b implements E3.d, InterfaceC1002c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f972a;

    /* renamed from: b  reason: collision with root package name */
    public final String f973b;

    public /* synthetic */ b(String str, int i) {
        this.f972a = i;
        this.f973b = str;
    }

    @Override // z0.InterfaceC1002c
    public void b(A0.b bVar) {
    }

    @Override // z0.InterfaceC1002c
    public String c() {
        return this.f973b;
    }

    @Override // E3.d
    public boolean test(Object obj) {
        String str = this.f973b;
        return obj == str || (obj != null && obj.equals(str));
    }

    public String toString() {
        switch (this.f972a) {
            case 1:
                return this.f973b;
            case 2:
                return "<" + this.f973b + '>';
            default:
                return super.toString();
        }
    }
}
