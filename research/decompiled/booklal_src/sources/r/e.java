package r;
/* loaded from: classes.dex */
public final class e implements Cloneable {

    /* renamed from: e  reason: collision with root package name */
    public static final Object f9920e = new Object();

    /* renamed from: a  reason: collision with root package name */
    public boolean f9921a = false;

    /* renamed from: b  reason: collision with root package name */
    public long[] f9922b;

    /* renamed from: c  reason: collision with root package name */
    public Object[] f9923c;

    /* renamed from: d  reason: collision with root package name */
    public int f9924d;

    public e() {
        int i;
        int i4 = 4;
        while (true) {
            i = 80;
            if (i4 >= 32) {
                break;
            }
            int i5 = (1 << i4) - 12;
            if (80 <= i5) {
                i = i5;
                break;
            }
            i4++;
        }
        int i6 = i / 8;
        this.f9922b = new long[i6];
        this.f9923c = new Object[i6];
    }

    public final void a() {
        int i = this.f9924d;
        Object[] objArr = this.f9923c;
        for (int i4 = 0; i4 < i; i4++) {
            objArr[i4] = null;
        }
        this.f9924d = 0;
        this.f9921a = false;
    }

    public final void b() {
        int i = this.f9924d;
        long[] jArr = this.f9922b;
        Object[] objArr = this.f9923c;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj = objArr[i5];
            if (obj != f9920e) {
                if (i5 != i4) {
                    jArr[i4] = jArr[i5];
                    objArr[i4] = obj;
                    objArr[i5] = null;
                }
                i4++;
            }
        }
        this.f9921a = false;
        this.f9924d = i4;
    }

    public final Object c(long j5, Long l5) {
        Object obj;
        int b5 = d.b(this.f9922b, this.f9924d, j5);
        return (b5 < 0 || (obj = this.f9923c[b5]) == f9920e) ? l5 : obj;
    }

    public final Object clone() {
        try {
            e eVar = (e) super.clone();
            eVar.f9922b = (long[]) this.f9922b.clone();
            eVar.f9923c = (Object[]) this.f9923c.clone();
            return eVar;
        } catch (CloneNotSupportedException e5) {
            throw new AssertionError(e5);
        }
    }

    public final void d(long j5, Object obj) {
        int b5 = d.b(this.f9922b, this.f9924d, j5);
        if (b5 >= 0) {
            this.f9923c[b5] = obj;
            return;
        }
        int i = ~b5;
        int i4 = this.f9924d;
        if (i < i4) {
            Object[] objArr = this.f9923c;
            if (objArr[i] == f9920e) {
                this.f9922b[i] = j5;
                objArr[i] = obj;
                return;
            }
        }
        if (this.f9921a && i4 >= this.f9922b.length) {
            b();
            i = ~d.b(this.f9922b, this.f9924d, j5);
        }
        int i5 = this.f9924d;
        if (i5 >= this.f9922b.length) {
            int i6 = (i5 + 1) * 8;
            int i7 = 4;
            while (true) {
                if (i7 >= 32) {
                    break;
                }
                int i8 = (1 << i7) - 12;
                if (i6 <= i8) {
                    i6 = i8;
                    break;
                }
                i7++;
            }
            int i9 = i6 / 8;
            long[] jArr = new long[i9];
            Object[] objArr2 = new Object[i9];
            long[] jArr2 = this.f9922b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f9923c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f9922b = jArr;
            this.f9923c = objArr2;
        }
        int i10 = this.f9924d - i;
        if (i10 != 0) {
            long[] jArr3 = this.f9922b;
            int i11 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i11, i10);
            Object[] objArr4 = this.f9923c;
            System.arraycopy(objArr4, i, objArr4, i11, this.f9924d - i);
        }
        this.f9922b[i] = j5;
        this.f9923c[i] = obj;
        this.f9924d++;
    }

    public final int e() {
        if (this.f9921a) {
            b();
        }
        return this.f9924d;
    }

    public final Object f(int i) {
        if (this.f9921a) {
            b();
        }
        return this.f9923c[i];
    }

    public final String toString() {
        if (e() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f9924d * 28);
        sb.append('{');
        for (int i = 0; i < this.f9924d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            if (this.f9921a) {
                b();
            }
            sb.append(this.f9922b[i]);
            sb.append('=');
            Object f5 = f(i);
            if (f5 != this) {
                sb.append(f5);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
