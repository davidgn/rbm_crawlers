package r4;

import Z3.n;
import e.C0387g;
import java.util.Iterator;
import java.util.NoSuchElementException;
import l4.InterfaceC0721a;
/* loaded from: classes2.dex */
public final class c implements Iterator, InterfaceC0721a {

    /* renamed from: a  reason: collision with root package name */
    public Object f10013a;

    /* renamed from: b  reason: collision with root package name */
    public int f10014b = -2;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ n f10015c;

    public c(n nVar) {
        this.f10015c = nVar;
    }

    public final void a() {
        Object invoke;
        int i = this.f10014b;
        n nVar = this.f10015c;
        if (i == -2) {
            nVar.getClass();
            invoke = C0387g.f7003a.invoke();
        } else {
            Object obj = this.f10013a;
            kotlin.jvm.internal.i.c(obj);
            invoke = ((h) nVar.f3501b).invoke(obj);
        }
        this.f10013a = invoke;
        this.f10014b = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f10014b < 0) {
            a();
        }
        return this.f10014b == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f10014b < 0) {
            a();
        }
        if (this.f10014b != 0) {
            Object obj = this.f10013a;
            kotlin.jvm.internal.i.d(obj, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
            this.f10014b = -1;
            return obj;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
