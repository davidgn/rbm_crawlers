package y1;
/* renamed from: y1.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0992i {

    /* renamed from: a  reason: collision with root package name */
    public Class f11545a;

    /* renamed from: b  reason: collision with root package name */
    public Class f11546b;

    /* renamed from: c  reason: collision with root package name */
    public Class f11547c;

    public C0992i(Class cls, Class cls2, Class cls3) {
        this.f11545a = cls;
        this.f11546b = cls2;
        this.f11547c = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0992i.class != obj.getClass()) {
            return false;
        }
        C0992i c0992i = (C0992i) obj;
        return this.f11545a.equals(c0992i.f11545a) && this.f11546b.equals(c0992i.f11546b) && AbstractC0994k.a(this.f11547c, c0992i.f11547c);
    }

    public final int hashCode() {
        int hashCode = (this.f11546b.hashCode() + (this.f11545a.hashCode() * 31)) * 31;
        Class cls = this.f11547c;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f11545a + ", second=" + this.f11546b + '}';
    }
}
