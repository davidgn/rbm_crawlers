package n4;

import f4.AbstractC0419c;
/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    public static final c f9654a = new d();

    /* renamed from: b  reason: collision with root package name */
    public static final d f9655b = AbstractC0419c.f7335a.b();

    public abstract int a(int i);

    public abstract int b();

    public int c(int i, int i4) {
        int b5;
        int i5;
        int i6;
        if (i4 <= i) {
            Integer valueOf = Integer.valueOf(i);
            Integer valueOf2 = Integer.valueOf(i4);
            throw new IllegalArgumentException(("Random range is empty: [" + valueOf + ", " + valueOf2 + ").").toString());
        }
        int i7 = i4 - i;
        if (i7 > 0 || i7 == Integer.MIN_VALUE) {
            if (((-i7) & i7) == i7) {
                i6 = a(31 - Integer.numberOfLeadingZeros(i7));
            } else {
                do {
                    b5 = b() >>> 1;
                    i5 = b5 % i7;
                } while ((i7 - 1) + (b5 - i5) < 0);
                i6 = i5;
            }
            return i + i6;
        }
        while (true) {
            int b6 = b();
            if (i <= b6 && b6 < i4) {
                return b6;
            }
        }
    }

    public abstract int e();
}
