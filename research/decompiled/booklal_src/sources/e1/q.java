package e1;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class q implements Iterable {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f7130a;

    public q(ArrayList arrayList) {
        this.f7130a = arrayList;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f7130a.iterator();
    }
}
