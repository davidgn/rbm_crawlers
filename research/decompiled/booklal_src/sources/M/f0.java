package M;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import java.util.NoSuchElementException;
import l4.InterfaceC0721a;
import r4.C0819b;
/* loaded from: classes.dex */
public class f0 implements Iterator, InterfaceC0721a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1828a;

    /* renamed from: b  reason: collision with root package name */
    public int f1829b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f1830c;

    public /* synthetic */ f0(Object obj, int i) {
        this.f1828a = i;
        this.f1830c = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Iterator it;
        switch (this.f1828a) {
            case 0:
                return this.f1829b < ((ViewGroup) this.f1830c).getChildCount();
            case 1:
                return this.f1829b < ((Z3.c) this.f1830c).a();
            case 2:
                return this.f1829b < ((Object[]) this.f1830c).length;
        }
        while (true) {
            int i = this.f1829b;
            it = (Iterator) this.f1830c;
            if (i > 0 && it.hasNext()) {
                it.next();
                this.f1829b--;
            }
        }
        return it.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Iterator it;
        switch (this.f1828a) {
            case 0:
                int i = this.f1829b;
                this.f1829b = i + 1;
                View childAt = ((ViewGroup) this.f1830c).getChildAt(i);
                if (childAt != null) {
                    return childAt;
                }
                throw new IndexOutOfBoundsException();
            case 1:
                if (hasNext()) {
                    int i4 = this.f1829b;
                    this.f1829b = i4 + 1;
                    return ((Z3.c) this.f1830c).get(i4);
                }
                throw new NoSuchElementException();
            case 2:
                try {
                    int i5 = this.f1829b;
                    this.f1829b = i5 + 1;
                    return ((Object[]) this.f1830c)[i5];
                } catch (ArrayIndexOutOfBoundsException e5) {
                    this.f1829b--;
                    throw new NoSuchElementException(e5.getMessage());
                }
        }
        while (true) {
            int i6 = this.f1829b;
            it = (Iterator) this.f1830c;
            if (i6 > 0 && it.hasNext()) {
                it.next();
                this.f1829b--;
            }
        }
        return it.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f1828a) {
            case 0:
                int i = this.f1829b - 1;
                this.f1829b = i;
                ((ViewGroup) this.f1830c).removeViewAt(i);
                return;
            case 1:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 2:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public f0(Object[] array) {
        this.f1828a = 2;
        kotlin.jvm.internal.i.f(array, "array");
        this.f1830c = array;
    }

    public f0(C0819b c0819b) {
        this.f1828a = 3;
        this.f1830c = c0819b.f10011a.iterator();
        this.f1829b = c0819b.f10012b;
    }
}
