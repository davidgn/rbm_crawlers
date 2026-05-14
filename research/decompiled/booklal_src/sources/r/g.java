package r;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public final class g implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    public final int f9925a;

    /* renamed from: b  reason: collision with root package name */
    public int f9926b;

    /* renamed from: c  reason: collision with root package name */
    public int f9927c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f9928d = false;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0793a f9929e;

    public g(C0793a c0793a, int i) {
        this.f9929e = c0793a;
        this.f9925a = i;
        this.f9926b = c0793a.d();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f9927c < this.f9926b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            Object b5 = this.f9929e.b(this.f9927c, this.f9925a);
            this.f9927c++;
            this.f9928d = true;
            return b5;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f9928d) {
            throw new IllegalStateException();
        }
        int i = this.f9927c - 1;
        this.f9927c = i;
        this.f9926b--;
        this.f9928d = false;
        this.f9929e.g(i);
    }
}
