package p4;
/* renamed from: p4.c  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0772c extends C0770a {

    /* renamed from: d  reason: collision with root package name */
    public static final C0772c f9883d = new C0770a(1, 0, 1);

    public final boolean d(int i) {
        return this.f9876a <= i && i <= this.f9877b;
    }

    @Override // p4.C0770a
    public final boolean equals(Object obj) {
        if (obj instanceof C0772c) {
            if (!isEmpty() || !((C0772c) obj).isEmpty()) {
                C0772c c0772c = (C0772c) obj;
                if (this.f9876a == c0772c.f9876a) {
                    if (this.f9877b == c0772c.f9877b) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // p4.C0770a
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f9876a * 31) + this.f9877b;
    }

    @Override // p4.C0770a
    public final boolean isEmpty() {
        return this.f9876a > this.f9877b;
    }

    @Override // p4.C0770a
    public final String toString() {
        return this.f9876a + ".." + this.f9877b;
    }
}
