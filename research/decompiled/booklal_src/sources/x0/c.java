package x0;
/* loaded from: classes.dex */
public final class c implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    public final int f11479a;

    /* renamed from: b  reason: collision with root package name */
    public final int f11480b;

    /* renamed from: c  reason: collision with root package name */
    public final String f11481c;

    /* renamed from: d  reason: collision with root package name */
    public final String f11482d;

    public c(int i, int i4, String str, String str2) {
        this.f11479a = i;
        this.f11480b = i4;
        this.f11481c = str;
        this.f11482d = str2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        c cVar = (c) obj;
        int i = this.f11479a - cVar.f11479a;
        return i == 0 ? this.f11480b - cVar.f11480b : i;
    }
}
