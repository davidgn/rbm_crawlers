package t3;

import java.io.Serializable;
import s.AbstractC0824e;
/* loaded from: classes2.dex */
public final class j implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public int f10428a;

    /* renamed from: b  reason: collision with root package name */
    public long f10429b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f10430c;

    /* renamed from: d  reason: collision with root package name */
    public String f10431d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f10432e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f10433f;

    /* renamed from: l  reason: collision with root package name */
    public boolean f10434l;

    /* renamed from: m  reason: collision with root package name */
    public int f10435m;

    /* renamed from: n  reason: collision with root package name */
    public String f10436n;
    public int o;

    /* renamed from: p  reason: collision with root package name */
    public String f10437p;

    public final boolean equals(Object obj) {
        j jVar;
        return (obj instanceof j) && (jVar = (j) obj) != null && (this == jVar || (this.f10428a == jVar.f10428a && this.f10429b == jVar.f10429b && this.f10431d.equals(jVar.f10431d) && this.f10433f == jVar.f10433f && this.f10435m == jVar.f10435m && this.f10436n.equals(jVar.f10436n) && this.o == jVar.o && this.f10437p.equals(jVar.f10437p)));
    }

    public final int hashCode() {
        int hashCode = (this.f10431d.hashCode() + ((Long.valueOf(this.f10429b).hashCode() + ((2173 + this.f10428a) * 53)) * 53)) * 53;
        int i = this.f10433f ? 1231 : 1237;
        int hashCode2 = this.f10436n.hashCode();
        return ((this.f10437p.hashCode() + ((AbstractC0824e.d(this.o) + ((hashCode2 + ((((hashCode + i) * 53) + this.f10435m) * 53)) * 53)) * 53)) * 53) + 1237;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Country Code: ");
        sb.append(this.f10428a);
        sb.append(" National Number: ");
        sb.append(this.f10429b);
        if (this.f10432e && this.f10433f) {
            sb.append(" Leading Zero(s): true");
        }
        if (this.f10434l) {
            sb.append(" Number of leading zeros: ");
            sb.append(this.f10435m);
        }
        if (this.f10430c) {
            sb.append(" Extension: ");
            sb.append(this.f10431d);
        }
        return sb.toString();
    }
}
