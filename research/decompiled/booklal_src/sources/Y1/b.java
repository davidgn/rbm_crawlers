package Y1;

import b2.InterfaceC0283a;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC0283a f3369a;

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f3370b;

    public b(InterfaceC0283a interfaceC0283a, HashMap hashMap) {
        this.f3369a = interfaceC0283a;
        this.f3370b = hashMap;
    }

    public final long a(P1.c cVar, long j5, int i) {
        int i4;
        long time = j5 - this.f3369a.getTime();
        c cVar2 = (c) this.f3370b.get(cVar);
        long j6 = cVar2.f3371a;
        return Math.min(Math.max((long) (Math.pow(3.0d, i - 1) * j6 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j6 > 1 ? j6 : 2L) * i4))), time), cVar2.f3372b);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return this.f3369a.equals(bVar.f3369a) && this.f3370b.equals(bVar.f3370b);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f3369a.hashCode() ^ 1000003) * 1000003) ^ this.f3370b.hashCode();
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f3369a + ", values=" + this.f3370b + "}";
    }
}
