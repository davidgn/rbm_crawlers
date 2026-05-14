package Y1;

import java.util.Set;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final long f3371a;

    /* renamed from: b  reason: collision with root package name */
    public final long f3372b;

    /* renamed from: c  reason: collision with root package name */
    public final Set f3373c;

    public c(long j5, long j6, Set set) {
        this.f3371a = j5;
        this.f3372b = j6;
        this.f3373c = set;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            return this.f3371a == cVar.f3371a && this.f3372b == cVar.f3372b && this.f3373c.equals(cVar.f3373c);
        }
        return false;
    }

    public final int hashCode() {
        long j5 = this.f3371a;
        long j6 = this.f3372b;
        return ((((((int) (j5 ^ (j5 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j6 >>> 32) ^ j6))) * 1000003) ^ this.f3373c.hashCode();
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f3371a + ", maxAllowedDelay=" + this.f3372b + ", flags=" + this.f3373c + "}";
    }
}
