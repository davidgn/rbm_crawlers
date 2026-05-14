package l3;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class A1 {

    /* renamed from: a  reason: collision with root package name */
    public final int f8778a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8779b;

    /* renamed from: c  reason: collision with root package name */
    public final int f8780c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicInteger f8781d;

    public A1(float f5, float f6) {
        AtomicInteger atomicInteger = new AtomicInteger();
        this.f8781d = atomicInteger;
        this.f8780c = (int) (f6 * 1000.0f);
        int i = (int) (f5 * 1000.0f);
        this.f8778a = i;
        this.f8779b = i / 2;
        atomicInteger.set(i);
    }

    public final boolean a() {
        AtomicInteger atomicInteger;
        int i;
        int i4;
        do {
            atomicInteger = this.f8781d;
            i = atomicInteger.get();
            if (i == 0) {
                return false;
            }
            i4 = i - 1000;
        } while (!atomicInteger.compareAndSet(i, Math.max(i4, 0)));
        return i4 > this.f8779b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof A1) {
            A1 a12 = (A1) obj;
            return this.f8778a == a12.f8778a && this.f8780c == a12.f8780c;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f8778a), Integer.valueOf(this.f8780c)});
    }
}
