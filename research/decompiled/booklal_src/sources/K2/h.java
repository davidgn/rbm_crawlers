package K2;

import java.util.Iterator;
import java.util.NoSuchElementException;
import s.AbstractC0824e;
/* loaded from: classes2.dex */
public final class h extends r {

    /* renamed from: a  reason: collision with root package name */
    public int f1408a = 2;

    /* renamed from: b  reason: collision with root package name */
    public Object f1409b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Iterator f1410c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ J2.g f1411d;

    public h(Iterator it, J2.g gVar) {
        this.f1410c = it;
        this.f1411d = gVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Object obj;
        int i = this.f1408a;
        if (i != 4) {
            int d2 = AbstractC0824e.d(i);
            if (d2 != 0) {
                if (d2 != 2) {
                    this.f1408a = 4;
                    while (true) {
                        Iterator it = this.f1410c;
                        if (!it.hasNext()) {
                            this.f1408a = 3;
                            obj = null;
                            break;
                        }
                        obj = it.next();
                        if (this.f1411d.apply(obj)) {
                            break;
                        }
                    }
                    this.f1409b = obj;
                    if (this.f1408a != 3) {
                        this.f1408a = 1;
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.f1408a = 2;
            Object obj = this.f1409b;
            this.f1409b = null;
            return obj;
        }
        throw new NoSuchElementException();
    }
}
