package p4;

import java.util.Iterator;
import java.util.NoSuchElementException;
import l4.InterfaceC0721a;
/* renamed from: p4.b  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0771b implements Iterator, InterfaceC0721a {

    /* renamed from: a  reason: collision with root package name */
    public final int f9879a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9880b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f9881c;

    /* renamed from: d  reason: collision with root package name */
    public int f9882d;

    public C0771b(int i, int i4, int i5) {
        this.f9879a = i5;
        this.f9880b = i4;
        boolean z4 = false;
        if (i5 <= 0 ? i >= i4 : i <= i4) {
            z4 = true;
        }
        this.f9881c = z4;
        this.f9882d = z4 ? i : i4;
    }

    public final int a() {
        int i = this.f9882d;
        if (i != this.f9880b) {
            this.f9882d = this.f9879a + i;
        } else if (!this.f9881c) {
            throw new NoSuchElementException();
        } else {
            this.f9881c = false;
        }
        return i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f9881c;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return Integer.valueOf(a());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
