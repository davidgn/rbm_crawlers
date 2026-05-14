package com.google.protobuf;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class L0 extends AbstractMap {

    /* renamed from: l  reason: collision with root package name */
    public static final /* synthetic */ int f6645l = 0;

    /* renamed from: a  reason: collision with root package name */
    public final int f6646a;

    /* renamed from: d  reason: collision with root package name */
    public boolean f6649d;

    /* renamed from: e  reason: collision with root package name */
    public volatile R0 f6650e;

    /* renamed from: b  reason: collision with root package name */
    public List f6647b = Collections.emptyList();

    /* renamed from: c  reason: collision with root package name */
    public Map f6648c = Collections.emptyMap();

    /* renamed from: f  reason: collision with root package name */
    public Map f6651f = Collections.emptyMap();

    public L0(int i) {
        this.f6646a = i;
    }

    public final int a(Comparable comparable) {
        int i;
        int size = this.f6647b.size();
        int i4 = size - 1;
        if (i4 >= 0) {
            int compareTo = comparable.compareTo(((P0) this.f6647b.get(i4)).f6657a);
            if (compareTo > 0) {
                i = size + 1;
                return -i;
            } else if (compareTo == 0) {
                return i4;
            }
        }
        int i5 = 0;
        while (i5 <= i4) {
            int i6 = (i5 + i4) / 2;
            int compareTo2 = comparable.compareTo(((P0) this.f6647b.get(i6)).f6657a);
            if (compareTo2 < 0) {
                i4 = i6 - 1;
            } else if (compareTo2 <= 0) {
                return i6;
            } else {
                i5 = i6 + 1;
            }
        }
        i = i5 + 1;
        return -i;
    }

    public final void b() {
        if (this.f6649d) {
            throw new UnsupportedOperationException();
        }
    }

    public final Map.Entry c(int i) {
        return (Map.Entry) this.f6647b.get(i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        b();
        if (!this.f6647b.isEmpty()) {
            this.f6647b.clear();
        }
        if (this.f6648c.isEmpty()) {
            return;
        }
        this.f6648c.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f6648c.containsKey(comparable);
    }

    public final Iterable d() {
        return this.f6648c.isEmpty() ? O0.f6656b : this.f6648c.entrySet();
    }

    public final SortedMap e() {
        b();
        if (this.f6648c.isEmpty() && !(this.f6648c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f6648c = treeMap;
            this.f6651f = treeMap.descendingMap();
        }
        return (SortedMap) this.f6648c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f6650e == null) {
            this.f6650e = new R0(this);
        }
        return this.f6650e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof L0) {
            L0 l02 = (L0) obj;
            int size = size();
            if (size != l02.size()) {
                return false;
            }
            int size2 = this.f6647b.size();
            if (size2 != l02.f6647b.size()) {
                return ((AbstractSet) entrySet()).equals(l02.entrySet());
            }
            for (int i = 0; i < size2; i++) {
                if (!c(i).equals(l02.c(i))) {
                    return false;
                }
            }
            if (size2 != size) {
                return this.f6648c.equals(l02.f6648c);
            }
            return true;
        }
        return super.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: f */
    public final Object put(Comparable comparable, Object obj) {
        b();
        int a5 = a(comparable);
        if (a5 >= 0) {
            return ((P0) this.f6647b.get(a5)).setValue(obj);
        }
        b();
        boolean isEmpty = this.f6647b.isEmpty();
        int i = this.f6646a;
        if (isEmpty && !(this.f6647b instanceof ArrayList)) {
            this.f6647b = new ArrayList(i);
        }
        int i4 = -(a5 + 1);
        if (i4 >= i) {
            return e().put(comparable, obj);
        }
        if (this.f6647b.size() == i) {
            P0 p02 = (P0) this.f6647b.remove(i - 1);
            e().put(p02.f6657a, p02.f6658b);
        }
        this.f6647b.add(i4, new P0(this, comparable, obj));
        return null;
    }

    public final Object g(int i) {
        b();
        Object obj = ((P0) this.f6647b.remove(i)).f6658b;
        if (!this.f6648c.isEmpty()) {
            Iterator it = e().entrySet().iterator();
            List list = this.f6647b;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new P0(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a5 = a(comparable);
        return a5 >= 0 ? ((P0) this.f6647b.get(a5)).f6658b : this.f6648c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.f6647b.size();
        int i = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i += ((P0) this.f6647b.get(i4)).hashCode();
        }
        return this.f6648c.size() > 0 ? i + this.f6648c.hashCode() : i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        b();
        Comparable comparable = (Comparable) obj;
        int a5 = a(comparable);
        if (a5 >= 0) {
            return g(a5);
        }
        if (this.f6648c.isEmpty()) {
            return null;
        }
        return this.f6648c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f6648c.size() + this.f6647b.size();
    }
}
