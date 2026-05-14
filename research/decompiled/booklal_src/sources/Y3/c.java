package Y3;

import p4.C0770a;
/* loaded from: classes2.dex */
public final class c implements Comparable {

    /* renamed from: b  reason: collision with root package name */
    public static final c f3423b = new c();

    /* renamed from: a  reason: collision with root package name */
    public final int f3424a;

    /* JADX WARN: Type inference failed for: r0v0, types: [p4.a, p4.c] */
    /* JADX WARN: Type inference failed for: r0v3, types: [p4.a, p4.c] */
    /* JADX WARN: Type inference failed for: r0v5, types: [p4.a, p4.c] */
    public c() {
        if (!new C0770a(0, 255, 1).d(1) || !new C0770a(0, 255, 1).d(8) || !new C0770a(0, 255, 1).d(10)) {
            throw new IllegalArgumentException("Version components are out of range: 1.8.10".toString());
        }
        this.f3424a = 67594;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        c other = (c) obj;
        kotlin.jvm.internal.i.f(other, "other");
        return this.f3424a - other.f3424a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        c cVar = obj instanceof c ? (c) obj : null;
        return cVar != null && this.f3424a == cVar.f3424a;
    }

    public final int hashCode() {
        return this.f3424a;
    }

    public final String toString() {
        return "1.8.10";
    }
}
