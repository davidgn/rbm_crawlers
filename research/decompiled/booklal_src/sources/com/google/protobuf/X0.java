package com.google.protobuf;

import java.util.ListIterator;
/* loaded from: classes2.dex */
public final class X0 implements ListIterator {

    /* renamed from: a  reason: collision with root package name */
    public ListIterator f6671a;

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        String str = (String) obj;
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f6671a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f6671a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        return (String) this.f6671a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f6671a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return (String) this.f6671a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f6671a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        String str = (String) obj;
        throw new UnsupportedOperationException();
    }
}
