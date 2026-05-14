package androidx.work;
/* loaded from: classes.dex */
public final class l extends m {

    /* renamed from: a  reason: collision with root package name */
    public final g f4767a;

    public l(g gVar) {
        this.f4767a = gVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        return this.f4767a.equals(((l) obj).f4767a);
    }

    public final int hashCode() {
        return this.f4767a.hashCode() + (l.class.getName().hashCode() * 31);
    }

    public final String toString() {
        return "Success {mOutputData=" + this.f4767a + '}';
    }
}
