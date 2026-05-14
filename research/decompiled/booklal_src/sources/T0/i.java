package T0;

import androidx.work.n;
import s.AbstractC0824e;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public String f2632a;

    /* renamed from: b  reason: collision with root package name */
    public int f2633b = 1;

    /* renamed from: c  reason: collision with root package name */
    public String f2634c;

    /* renamed from: d  reason: collision with root package name */
    public String f2635d;

    /* renamed from: e  reason: collision with root package name */
    public androidx.work.g f2636e;

    /* renamed from: f  reason: collision with root package name */
    public androidx.work.g f2637f;

    /* renamed from: g  reason: collision with root package name */
    public long f2638g;

    /* renamed from: h  reason: collision with root package name */
    public long f2639h;
    public long i;

    /* renamed from: j  reason: collision with root package name */
    public androidx.work.c f2640j;

    /* renamed from: k  reason: collision with root package name */
    public int f2641k;

    /* renamed from: l  reason: collision with root package name */
    public int f2642l;

    /* renamed from: m  reason: collision with root package name */
    public long f2643m;

    /* renamed from: n  reason: collision with root package name */
    public long f2644n;
    public long o;

    /* renamed from: p  reason: collision with root package name */
    public long f2645p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f2646q;

    /* renamed from: r  reason: collision with root package name */
    public int f2647r;

    static {
        n.e("WorkSpec");
    }

    public i(String str, String str2) {
        androidx.work.g gVar = androidx.work.g.f4729c;
        this.f2636e = gVar;
        this.f2637f = gVar;
        this.f2640j = androidx.work.c.i;
        this.f2642l = 1;
        this.f2643m = 30000L;
        this.f2645p = -1L;
        this.f2647r = 1;
        this.f2632a = str;
        this.f2634c = str2;
    }

    public final long a() {
        int i;
        if (this.f2633b == 1 && (i = this.f2641k) > 0) {
            return Math.min(18000000L, this.f2642l == 2 ? this.f2643m * i : Math.scalb((float) this.f2643m, i - 1)) + this.f2644n;
        }
        if (!c()) {
            long j5 = this.f2644n;
            if (j5 == 0) {
                j5 = System.currentTimeMillis();
            }
            return j5 + this.f2638g;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j6 = this.f2644n;
        int i4 = (j6 > 0L ? 1 : (j6 == 0L ? 0 : -1));
        if (i4 == 0) {
            j6 = this.f2638g + currentTimeMillis;
        }
        long j7 = this.i;
        long j8 = this.f2639h;
        if (j7 != j8) {
            return j6 + j8 + (i4 == 0 ? j7 * (-1) : 0L);
        }
        return j6 + (i4 != 0 ? j8 : 0L);
    }

    public final boolean b() {
        return !androidx.work.c.i.equals(this.f2640j);
    }

    public final boolean c() {
        return this.f2639h != 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f2638g == iVar.f2638g && this.f2639h == iVar.f2639h && this.i == iVar.i && this.f2641k == iVar.f2641k && this.f2643m == iVar.f2643m && this.f2644n == iVar.f2644n && this.o == iVar.o && this.f2645p == iVar.f2645p && this.f2646q == iVar.f2646q && this.f2632a.equals(iVar.f2632a) && this.f2633b == iVar.f2633b && this.f2634c.equals(iVar.f2634c)) {
            String str = this.f2635d;
            if (str == null ? iVar.f2635d == null : str.equals(iVar.f2635d)) {
                return this.f2636e.equals(iVar.f2636e) && this.f2637f.equals(iVar.f2637f) && this.f2640j.equals(iVar.f2640j) && this.f2642l == iVar.f2642l && this.f2647r == iVar.f2647r;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f2634c.hashCode() + ((AbstractC0824e.d(this.f2633b) + (this.f2632a.hashCode() * 31)) * 31)) * 31;
        String str = this.f2635d;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int hashCode3 = this.f2636e.hashCode();
        int hashCode4 = this.f2637f.hashCode();
        long j5 = this.f2638g;
        long j6 = this.f2639h;
        long j7 = this.i;
        int hashCode5 = this.f2640j.hashCode();
        int d2 = AbstractC0824e.d(this.f2642l);
        long j8 = this.f2643m;
        long j9 = this.f2644n;
        long j10 = this.o;
        long j11 = this.f2645p;
        return AbstractC0824e.d(this.f2647r) + ((((((((((((d2 + ((((hashCode5 + ((((((((hashCode4 + ((hashCode3 + ((hashCode + hashCode2) * 31)) * 31)) * 31) + ((int) (j5 ^ (j5 >>> 32)))) * 31) + ((int) (j6 ^ (j6 >>> 32)))) * 31) + ((int) (j7 ^ (j7 >>> 32)))) * 31)) * 31) + this.f2641k) * 31)) * 31) + ((int) (j8 ^ (j8 >>> 32)))) * 31) + ((int) (j9 ^ (j9 >>> 32)))) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f2646q ? 1 : 0)) * 31);
    }

    public final String toString() {
        return C.a.p(new StringBuilder("{WorkSpec: "), this.f2632a, "}");
    }
}
