package x0;

import java.util.List;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final String f11483a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f11484b;

    /* renamed from: c  reason: collision with root package name */
    public final List f11485c;

    public d(List list, String str, boolean z4) {
        this.f11483a = str;
        this.f11484b = z4;
        this.f11485c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f11484b == dVar.f11484b && this.f11485c.equals(dVar.f11485c)) {
            String str = this.f11483a;
            boolean startsWith = str.startsWith("index_");
            String str2 = dVar.f11483a;
            return startsWith ? str2.startsWith("index_") : str.equals(str2);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f11483a;
        return this.f11485c.hashCode() + ((((str.startsWith("index_") ? -1184239155 : str.hashCode()) * 31) + (this.f11484b ? 1 : 0)) * 31);
    }

    public final String toString() {
        return "Index{name='" + this.f11483a + "', unique=" + this.f11484b + ", columns=" + this.f11485c + '}';
    }
}
