package r;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: r.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0793a {

    /* renamed from: a  reason: collision with root package name */
    public h f9903a;

    /* renamed from: b  reason: collision with root package name */
    public h f9904b;

    /* renamed from: c  reason: collision with root package name */
    public j f9905c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9906d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f9907e;

    public /* synthetic */ C0793a(Object obj, int i) {
        this.f9906d = i;
        this.f9907e = obj;
    }

    public static boolean h(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static boolean i(Map map, Collection collection) {
        int size = map.size();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public final void a() {
        switch (this.f9906d) {
            case 0:
                ((C0794b) this.f9907e).clear();
                return;
            default:
                ((c) this.f9907e).clear();
                return;
        }
    }

    public final Object b(int i, int i4) {
        switch (this.f9906d) {
            case 0:
                return ((C0794b) this.f9907e).f9942b[(i << 1) + i4];
            default:
                return ((c) this.f9907e).f9915b[i];
        }
    }

    public final Map c() {
        switch (this.f9906d) {
            case 0:
                return (C0794b) this.f9907e;
            default:
                throw new UnsupportedOperationException("not a map");
        }
    }

    public final int d() {
        switch (this.f9906d) {
            case 0:
                return ((C0794b) this.f9907e).f9943c;
            default:
                return ((c) this.f9907e).f9916c;
        }
    }

    public final int e(Object obj) {
        switch (this.f9906d) {
            case 0:
                return ((C0794b) this.f9907e).e(obj);
            default:
                return ((c) this.f9907e).indexOf(obj);
        }
    }

    public final int f(Object obj) {
        switch (this.f9906d) {
            case 0:
                return ((C0794b) this.f9907e).g(obj);
            default:
                return ((c) this.f9907e).indexOf(obj);
        }
    }

    public final void g(int i) {
        switch (this.f9906d) {
            case 0:
                ((C0794b) this.f9907e).j(i);
                return;
            default:
                ((c) this.f9907e).j(i);
                return;
        }
    }

    public final Object[] j(int i, Object[] objArr) {
        int d2 = d();
        if (objArr.length < d2) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), d2);
        }
        for (int i4 = 0; i4 < d2; i4++) {
            objArr[i4] = b(i4, i);
        }
        if (objArr.length > d2) {
            objArr[d2] = null;
        }
        return objArr;
    }
}
