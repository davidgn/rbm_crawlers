package f2;

import android.animation.TimeInterpolator;
import e1.i;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public long f7328a;

    /* renamed from: b  reason: collision with root package name */
    public long f7329b;

    /* renamed from: c  reason: collision with root package name */
    public TimeInterpolator f7330c;

    /* renamed from: d  reason: collision with root package name */
    public int f7331d;

    /* renamed from: e  reason: collision with root package name */
    public int f7332e;

    public final TimeInterpolator a() {
        TimeInterpolator timeInterpolator = this.f7330c;
        return timeInterpolator != null ? timeInterpolator : AbstractC0415a.f7322b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (this.f7328a == cVar.f7328a && this.f7329b == cVar.f7329b && this.f7331d == cVar.f7331d && this.f7332e == cVar.f7332e) {
                return a().getClass().equals(cVar.a().getClass());
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        long j5 = this.f7328a;
        long j6 = this.f7329b;
        return ((((a().getClass().hashCode() + (((((int) (j5 ^ (j5 >>> 32))) * 31) + ((int) ((j6 >>> 32) ^ j6))) * 31)) * 31) + this.f7331d) * 31) + this.f7332e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n");
        sb.append(c.class.getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" delay: ");
        sb.append(this.f7328a);
        sb.append(" duration: ");
        sb.append(this.f7329b);
        sb.append(" interpolator: ");
        sb.append(a().getClass());
        sb.append(" repeatCount: ");
        sb.append(this.f7331d);
        sb.append(" repeatMode: ");
        return i.b(this.f7332e, "}\n", sb);
    }
}
