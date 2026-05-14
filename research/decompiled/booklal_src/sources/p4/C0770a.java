package p4;

import W2.B;
import l4.InterfaceC0721a;
/* renamed from: p4.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0770a implements Iterable, InterfaceC0721a {

    /* renamed from: a  reason: collision with root package name */
    public final int f9876a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9877b;

    /* renamed from: c  reason: collision with root package name */
    public final int f9878c;

    public C0770a(int i, int i4, int i5) {
        if (i5 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i5 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f9876a = i;
        this.f9877b = B.o(i, i4, i5);
        this.f9878c = i5;
    }

    @Override // java.lang.Iterable
    /* renamed from: a */
    public final C0771b iterator() {
        return new C0771b(this.f9876a, this.f9877b, this.f9878c);
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0770a) {
            if (!isEmpty() || !((C0770a) obj).isEmpty()) {
                C0770a c0770a = (C0770a) obj;
                if (this.f9876a != c0770a.f9876a || this.f9877b != c0770a.f9877b || this.f9878c != c0770a.f9878c) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f9876a * 31) + this.f9877b) * 31) + this.f9878c;
    }

    public boolean isEmpty() {
        int i = this.f9878c;
        int i4 = this.f9877b;
        int i5 = this.f9876a;
        if (i > 0) {
            if (i5 <= i4) {
                return false;
            }
        } else if (i5 >= i4) {
            return false;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb;
        int i = this.f9877b;
        int i4 = this.f9876a;
        int i5 = this.f9878c;
        if (i5 > 0) {
            sb = new StringBuilder();
            sb.append(i4);
            sb.append("..");
            sb.append(i);
            sb.append(" step ");
            sb.append(i5);
        } else {
            sb = new StringBuilder();
            sb.append(i4);
            sb.append(" downTo ");
            sb.append(i);
            sb.append(" step ");
            sb.append(-i5);
        }
        return sb.toString();
    }
}
