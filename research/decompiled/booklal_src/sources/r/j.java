package r;

import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class j implements Collection {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0793a f9936a;

    public j(C0793a c0793a) {
        this.f9936a = c0793a;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.f9936a.a();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.f9936a.f(obj) >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        for (Object obj : collection) {
            if (!contains(obj)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f9936a.d() == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new g(this.f9936a, 1);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        C0793a c0793a = this.f9936a;
        int f5 = c0793a.f(obj);
        if (f5 >= 0) {
            c0793a.g(f5);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        C0793a c0793a = this.f9936a;
        int d2 = c0793a.d();
        int i = 0;
        boolean z4 = false;
        while (i < d2) {
            if (collection.contains(c0793a.b(i, 1))) {
                c0793a.g(i);
                i--;
                d2--;
                z4 = true;
            }
            i++;
        }
        return z4;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        C0793a c0793a = this.f9936a;
        int d2 = c0793a.d();
        int i = 0;
        boolean z4 = false;
        while (i < d2) {
            if (!collection.contains(c0793a.b(i, 1))) {
                c0793a.g(i);
                i--;
                d2--;
                z4 = true;
            }
            i++;
        }
        return z4;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f9936a.d();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        C0793a c0793a = this.f9936a;
        int d2 = c0793a.d();
        Object[] objArr = new Object[d2];
        for (int i = 0; i < d2; i++) {
            objArr[i] = c0793a.b(i, 1);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.f9936a.j(1, objArr);
    }
}
