package E;

import android.graphics.Insets;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: e  reason: collision with root package name */
    public static final c f702e = new c(0, 0, 0, 0);

    /* renamed from: a  reason: collision with root package name */
    public final int f703a;

    /* renamed from: b  reason: collision with root package name */
    public final int f704b;

    /* renamed from: c  reason: collision with root package name */
    public final int f705c;

    /* renamed from: d  reason: collision with root package name */
    public final int f706d;

    public c(int i, int i4, int i5, int i6) {
        this.f703a = i;
        this.f704b = i4;
        this.f705c = i5;
        this.f706d = i6;
    }

    public static c a(int i, int i4, int i5, int i6) {
        return (i == 0 && i4 == 0 && i5 == 0 && i6 == 0) ? f702e : new c(i, i4, i5, i6);
    }

    public static c b(Insets insets) {
        int i;
        int i4;
        int i5;
        int i6;
        i = insets.left;
        i4 = insets.top;
        i5 = insets.right;
        i6 = insets.bottom;
        return a(i, i4, i5, i6);
    }

    public final Insets c() {
        return b.a(this.f703a, this.f704b, this.f705c, this.f706d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f706d == cVar.f706d && this.f703a == cVar.f703a && this.f705c == cVar.f705c && this.f704b == cVar.f704b;
    }

    public final int hashCode() {
        return (((((this.f703a * 31) + this.f704b) * 31) + this.f705c) * 31) + this.f706d;
    }

    public final String toString() {
        return "Insets{left=" + this.f703a + ", top=" + this.f704b + ", right=" + this.f705c + ", bottom=" + this.f706d + '}';
    }
}
