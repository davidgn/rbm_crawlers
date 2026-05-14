package r;
/* loaded from: classes.dex */
public final class l implements Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final Object f9944d = new Object();

    /* renamed from: a  reason: collision with root package name */
    public int[] f9945a;

    /* renamed from: b  reason: collision with root package name */
    public Object[] f9946b;

    /* renamed from: c  reason: collision with root package name */
    public int f9947c;

    public l() {
        int i;
        int i4 = 4;
        while (true) {
            i = 40;
            if (i4 >= 32) {
                break;
            }
            int i5 = (1 << i4) - 12;
            if (40 <= i5) {
                i = i5;
                break;
            }
            i4++;
        }
        int i6 = i / 4;
        this.f9945a = new int[i6];
        this.f9946b = new Object[i6];
    }

    public final void a(int i, Object obj) {
        int i4 = this.f9947c;
        if (i4 != 0 && i <= this.f9945a[i4 - 1]) {
            c(i, obj);
            return;
        }
        if (i4 >= this.f9945a.length) {
            int i5 = (i4 + 1) * 4;
            int i6 = 4;
            while (true) {
                if (i6 >= 32) {
                    break;
                }
                int i7 = (1 << i6) - 12;
                if (i5 <= i7) {
                    i5 = i7;
                    break;
                }
                i6++;
            }
            int i8 = i5 / 4;
            int[] iArr = new int[i8];
            Object[] objArr = new Object[i8];
            int[] iArr2 = this.f9945a;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f9946b;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f9945a = iArr;
            this.f9946b = objArr;
        }
        this.f9945a[i4] = i;
        this.f9946b[i4] = obj;
        this.f9947c = i4 + 1;
    }

    public final Object b(int i, Integer num) {
        Object obj;
        int a5 = d.a(this.f9945a, this.f9947c, i);
        return (a5 < 0 || (obj = this.f9946b[a5]) == f9944d) ? num : obj;
    }

    public final void c(int i, Object obj) {
        int a5 = d.a(this.f9945a, this.f9947c, i);
        if (a5 >= 0) {
            this.f9946b[a5] = obj;
            return;
        }
        int i4 = ~a5;
        int i5 = this.f9947c;
        if (i4 < i5) {
            Object[] objArr = this.f9946b;
            if (objArr[i4] == f9944d) {
                this.f9945a[i4] = i;
                objArr[i4] = obj;
                return;
            }
        }
        if (i5 >= this.f9945a.length) {
            int i6 = (i5 + 1) * 4;
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
            int i9 = i6 / 4;
            int[] iArr = new int[i9];
            Object[] objArr2 = new Object[i9];
            int[] iArr2 = this.f9945a;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f9946b;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f9945a = iArr;
            this.f9946b = objArr2;
        }
        int i10 = this.f9947c - i4;
        if (i10 != 0) {
            int[] iArr3 = this.f9945a;
            int i11 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i11, i10);
            Object[] objArr4 = this.f9946b;
            System.arraycopy(objArr4, i4, objArr4, i11, this.f9947c - i4);
        }
        this.f9945a[i4] = i;
        this.f9946b[i4] = obj;
        this.f9947c++;
    }

    public final Object clone() {
        try {
            l lVar = (l) super.clone();
            lVar.f9945a = (int[]) this.f9945a.clone();
            lVar.f9946b = (Object[]) this.f9946b.clone();
            return lVar;
        } catch (CloneNotSupportedException e5) {
            throw new AssertionError(e5);
        }
    }

    public final String toString() {
        int i = this.f9947c;
        if (i <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i * 28);
        sb.append('{');
        for (int i4 = 0; i4 < this.f9947c; i4++) {
            if (i4 > 0) {
                sb.append(", ");
            }
            sb.append(this.f9945a[i4]);
            sb.append('=');
            Object obj = this.f9946b[i4];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
