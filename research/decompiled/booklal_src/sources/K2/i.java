package K2;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public final class i extends r {

    /* renamed from: a  reason: collision with root package name */
    public boolean f1412a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f1413b;

    public i(Object obj) {
        this.f1413b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f1412a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f1412a) {
            throw new NoSuchElementException();
        }
        this.f1412a = true;
        return this.f1413b;
    }
}
