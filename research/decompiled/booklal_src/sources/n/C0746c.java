package n;

import java.util.Map;
/* renamed from: n.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0746c implements Map.Entry {

    /* renamed from: a  reason: collision with root package name */
    public final Object f9571a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f9572b;

    /* renamed from: c  reason: collision with root package name */
    public C0746c f9573c;

    /* renamed from: d  reason: collision with root package name */
    public C0746c f9574d;

    public C0746c(Object obj, Object obj2) {
        this.f9571a = obj;
        this.f9572b = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0746c) {
            C0746c c0746c = (C0746c) obj;
            return this.f9571a.equals(c0746c.f9571a) && this.f9572b.equals(c0746c.f9572b);
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f9571a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f9572b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f9571a.hashCode() ^ this.f9572b.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.f9571a + "=" + this.f9572b;
    }
}
