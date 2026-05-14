package v;

import java.util.Iterator;
/* loaded from: classes.dex */
public class g extends f {

    /* renamed from: m  reason: collision with root package name */
    public int f11084m;

    public g(o oVar) {
        super(oVar);
        if (oVar instanceof k) {
            this.f11077e = 2;
        } else {
            this.f11077e = 3;
        }
    }

    @Override // v.f
    public final void d(int i) {
        if (this.f11081j) {
            return;
        }
        this.f11081j = true;
        this.f11079g = i;
        Iterator it = this.f11082k.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            dVar.a(dVar);
        }
    }
}
