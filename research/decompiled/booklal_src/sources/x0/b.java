package x0;

import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final String f11474a;

    /* renamed from: b  reason: collision with root package name */
    public final String f11475b;

    /* renamed from: c  reason: collision with root package name */
    public final String f11476c;

    /* renamed from: d  reason: collision with root package name */
    public final List f11477d;

    /* renamed from: e  reason: collision with root package name */
    public final List f11478e;

    public b(String str, String str2, String str3, List list, List list2) {
        this.f11474a = str;
        this.f11475b = str2;
        this.f11476c = str3;
        this.f11477d = Collections.unmodifiableList(list);
        this.f11478e = Collections.unmodifiableList(list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f11474a.equals(bVar.f11474a) && this.f11475b.equals(bVar.f11475b) && this.f11476c.equals(bVar.f11476c) && this.f11477d.equals(bVar.f11477d)) {
            return this.f11478e.equals(bVar.f11478e);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f11475b.hashCode();
        int hashCode2 = this.f11476c.hashCode();
        int hashCode3 = this.f11477d.hashCode();
        return this.f11478e.hashCode() + ((hashCode3 + ((hashCode2 + ((hashCode + (this.f11474a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ForeignKey{referenceTable='" + this.f11474a + "', onDelete='" + this.f11475b + "', onUpdate='" + this.f11476c + "', columnNames=" + this.f11477d + ", referenceColumnNames=" + this.f11478e + '}';
    }
}
