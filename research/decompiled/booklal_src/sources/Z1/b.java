package Z1;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final long f3470a;

    /* renamed from: b  reason: collision with root package name */
    public final S1.j f3471b;

    /* renamed from: c  reason: collision with root package name */
    public final S1.i f3472c;

    public b(long j5, S1.j jVar, S1.i iVar) {
        this.f3470a = j5;
        this.f3471b = jVar;
        this.f3472c = iVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return this.f3470a == bVar.f3470a && this.f3471b.equals(bVar.f3471b) && this.f3472c.equals(bVar.f3472c);
        }
        return false;
    }

    public final int hashCode() {
        long j5 = this.f3470a;
        return ((((((int) ((j5 >>> 32) ^ j5)) ^ 1000003) * 1000003) ^ this.f3471b.hashCode()) * 1000003) ^ this.f3472c.hashCode();
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f3470a + ", transportContext=" + this.f3471b + ", event=" + this.f3472c + "}";
    }
}
