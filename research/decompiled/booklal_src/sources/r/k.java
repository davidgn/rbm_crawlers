package r;

import java.util.ConcurrentModificationException;
import java.util.Map;
/* loaded from: classes.dex */
public class k {

    /* renamed from: d  reason: collision with root package name */
    public static Object[] f9937d;

    /* renamed from: e  reason: collision with root package name */
    public static int f9938e;

    /* renamed from: f  reason: collision with root package name */
    public static Object[] f9939f;

    /* renamed from: l  reason: collision with root package name */
    public static int f9940l;

    /* renamed from: a  reason: collision with root package name */
    public int[] f9941a;

    /* renamed from: b  reason: collision with root package name */
    public Object[] f9942b;

    /* renamed from: c  reason: collision with root package name */
    public int f9943c;

    public k() {
        this.f9941a = d.f9918a;
        this.f9942b = d.f9919b;
        this.f9943c = 0;
    }

    public static void c(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (k.class) {
                try {
                    if (f9940l < 10) {
                        objArr[0] = f9939f;
                        objArr[1] = iArr;
                        for (int i4 = (i << 1) - 1; i4 >= 2; i4--) {
                            objArr[i4] = null;
                        }
                        f9939f = objArr;
                        f9940l++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (k.class) {
                try {
                    if (f9938e < 10) {
                        objArr[0] = f9937d;
                        objArr[1] = iArr;
                        for (int i5 = (i << 1) - 1; i5 >= 2; i5--) {
                            objArr[i5] = null;
                        }
                        f9937d = objArr;
                        f9938e++;
                    }
                } finally {
                }
            }
        }
    }

    public final void a(int i) {
        if (i == 8) {
            synchronized (k.class) {
                try {
                    Object[] objArr = f9939f;
                    if (objArr != null) {
                        this.f9942b = objArr;
                        f9939f = (Object[]) objArr[0];
                        this.f9941a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f9940l--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (k.class) {
                try {
                    Object[] objArr2 = f9937d;
                    if (objArr2 != null) {
                        this.f9942b = objArr2;
                        f9937d = (Object[]) objArr2[0];
                        this.f9941a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f9938e--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f9941a = new int[i];
        this.f9942b = new Object[i << 1];
    }

    public final void b(int i) {
        int i4 = this.f9943c;
        int[] iArr = this.f9941a;
        if (iArr.length < i) {
            Object[] objArr = this.f9942b;
            a(i);
            if (this.f9943c > 0) {
                System.arraycopy(iArr, 0, this.f9941a, 0, i4);
                System.arraycopy(objArr, 0, this.f9942b, 0, i4 << 1);
            }
            c(iArr, objArr, i4);
        }
        if (this.f9943c != i4) {
            throw new ConcurrentModificationException();
        }
    }

    public void clear() {
        int i = this.f9943c;
        if (i > 0) {
            int[] iArr = this.f9941a;
            Object[] objArr = this.f9942b;
            this.f9941a = d.f9918a;
            this.f9942b = d.f9919b;
            this.f9943c = 0;
            c(iArr, objArr, i);
        }
        if (this.f9943c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean containsKey(Object obj) {
        return e(obj) >= 0;
    }

    public final boolean containsValue(Object obj) {
        return g(obj) >= 0;
    }

    public final int d(int i, Object obj) {
        int i4 = this.f9943c;
        if (i4 == 0) {
            return -1;
        }
        try {
            int a5 = d.a(this.f9941a, i4, i);
            if (a5 >= 0 && !obj.equals(this.f9942b[a5 << 1])) {
                int i5 = a5 + 1;
                while (i5 < i4 && this.f9941a[i5] == i) {
                    if (obj.equals(this.f9942b[i5 << 1])) {
                        return i5;
                    }
                    i5++;
                }
                for (int i6 = a5 - 1; i6 >= 0 && this.f9941a[i6] == i; i6--) {
                    if (obj.equals(this.f9942b[i6 << 1])) {
                        return i6;
                    }
                }
                return ~i5;
            }
            return a5;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final int e(Object obj) {
        return obj == null ? f() : d(obj.hashCode(), obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (this.f9943c != kVar.f9943c) {
                return false;
            }
            for (int i = 0; i < this.f9943c; i++) {
                try {
                    Object h5 = h(i);
                    Object l5 = l(i);
                    Object orDefault = kVar.getOrDefault(h5, null);
                    if (l5 == null) {
                        if (orDefault != null || !kVar.containsKey(h5)) {
                            return false;
                        }
                    } else if (!l5.equals(orDefault)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.f9943c != map.size()) {
                return false;
            }
            for (int i4 = 0; i4 < this.f9943c; i4++) {
                try {
                    Object h6 = h(i4);
                    Object l6 = l(i4);
                    Object obj2 = map.get(h6);
                    if (l6 == null) {
                        if (obj2 != null || !map.containsKey(h6)) {
                            return false;
                        }
                    } else if (!l6.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f() {
        int i = this.f9943c;
        if (i == 0) {
            return -1;
        }
        try {
            int a5 = d.a(this.f9941a, i, 0);
            if (a5 >= 0 && this.f9942b[a5 << 1] != null) {
                int i4 = a5 + 1;
                while (i4 < i && this.f9941a[i4] == 0) {
                    if (this.f9942b[i4 << 1] == null) {
                        return i4;
                    }
                    i4++;
                }
                for (int i5 = a5 - 1; i5 >= 0 && this.f9941a[i5] == 0; i5--) {
                    if (this.f9942b[i5 << 1] == null) {
                        return i5;
                    }
                }
                return ~i4;
            }
            return a5;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final int g(Object obj) {
        int i = this.f9943c * 2;
        Object[] objArr = this.f9942b;
        if (obj == null) {
            for (int i4 = 1; i4 < i; i4 += 2) {
                if (objArr[i4] == null) {
                    return i4 >> 1;
                }
            }
            return -1;
        }
        for (int i5 = 1; i5 < i; i5 += 2) {
            if (obj.equals(objArr[i5])) {
                return i5 >> 1;
            }
        }
        return -1;
    }

    public final Object get(Object obj) {
        return getOrDefault(obj, null);
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int e5 = e(obj);
        return e5 >= 0 ? this.f9942b[(e5 << 1) + 1] : obj2;
    }

    public final Object h(int i) {
        return this.f9942b[i << 1];
    }

    public int hashCode() {
        int[] iArr = this.f9941a;
        Object[] objArr = this.f9942b;
        int i = this.f9943c;
        int i4 = 1;
        int i5 = 0;
        int i6 = 0;
        while (i5 < i) {
            Object obj = objArr[i4];
            i6 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i5];
            i5++;
            i4 += 2;
        }
        return i6;
    }

    public void i(k kVar) {
        int i = kVar.f9943c;
        b(this.f9943c + i);
        if (this.f9943c != 0) {
            for (int i4 = 0; i4 < i; i4++) {
                put(kVar.h(i4), kVar.l(i4));
            }
        } else if (i > 0) {
            System.arraycopy(kVar.f9941a, 0, this.f9941a, 0, i);
            System.arraycopy(kVar.f9942b, 0, this.f9942b, 0, i << 1);
            this.f9943c = i;
        }
    }

    public final boolean isEmpty() {
        return this.f9943c <= 0;
    }

    public Object j(int i) {
        Object[] objArr = this.f9942b;
        int i4 = i << 1;
        Object obj = objArr[i4 + 1];
        int i5 = this.f9943c;
        int i6 = 0;
        if (i5 <= 1) {
            c(this.f9941a, objArr, i5);
            this.f9941a = d.f9918a;
            this.f9942b = d.f9919b;
        } else {
            int i7 = i5 - 1;
            int[] iArr = this.f9941a;
            if (iArr.length <= 8 || i5 >= iArr.length / 3) {
                if (i < i7) {
                    int i8 = i + 1;
                    int i9 = i7 - i;
                    System.arraycopy(iArr, i8, iArr, i, i9);
                    Object[] objArr2 = this.f9942b;
                    System.arraycopy(objArr2, i8 << 1, objArr2, i4, i9 << 1);
                }
                Object[] objArr3 = this.f9942b;
                int i10 = i7 << 1;
                objArr3[i10] = null;
                objArr3[i10 + 1] = null;
            } else {
                a(i5 > 8 ? i5 + (i5 >> 1) : 8);
                if (i5 != this.f9943c) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f9941a, 0, i);
                    System.arraycopy(objArr, 0, this.f9942b, 0, i4);
                }
                if (i < i7) {
                    int i11 = i + 1;
                    int i12 = i7 - i;
                    System.arraycopy(iArr, i11, this.f9941a, i, i12);
                    System.arraycopy(objArr, i11 << 1, this.f9942b, i4, i12 << 1);
                }
            }
            i6 = i7;
        }
        if (i5 == this.f9943c) {
            this.f9943c = i6;
            return obj;
        }
        throw new ConcurrentModificationException();
    }

    public Object k(int i, Object obj) {
        int i4 = (i << 1) + 1;
        Object[] objArr = this.f9942b;
        Object obj2 = objArr[i4];
        objArr[i4] = obj;
        return obj2;
    }

    public final Object l(int i) {
        return this.f9942b[(i << 1) + 1];
    }

    public Object put(Object obj, Object obj2) {
        int i;
        int d2;
        int i4 = this.f9943c;
        if (obj == null) {
            d2 = f();
            i = 0;
        } else {
            int hashCode = obj.hashCode();
            i = hashCode;
            d2 = d(hashCode, obj);
        }
        if (d2 >= 0) {
            int i5 = (d2 << 1) + 1;
            Object[] objArr = this.f9942b;
            Object obj3 = objArr[i5];
            objArr[i5] = obj2;
            return obj3;
        }
        int i6 = ~d2;
        int[] iArr = this.f9941a;
        if (i4 >= iArr.length) {
            int i7 = 8;
            if (i4 >= 8) {
                i7 = (i4 >> 1) + i4;
            } else if (i4 < 4) {
                i7 = 4;
            }
            Object[] objArr2 = this.f9942b;
            a(i7);
            if (i4 != this.f9943c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f9941a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f9942b, 0, objArr2.length);
            }
            c(iArr, objArr2, i4);
        }
        if (i6 < i4) {
            int[] iArr3 = this.f9941a;
            int i8 = i6 + 1;
            System.arraycopy(iArr3, i6, iArr3, i8, i4 - i6);
            Object[] objArr3 = this.f9942b;
            System.arraycopy(objArr3, i6 << 1, objArr3, i8 << 1, (this.f9943c - i6) << 1);
        }
        int i9 = this.f9943c;
        if (i4 == i9) {
            int[] iArr4 = this.f9941a;
            if (i6 < iArr4.length) {
                iArr4[i6] = i;
                Object[] objArr4 = this.f9942b;
                int i10 = i6 << 1;
                objArr4[i10] = obj;
                objArr4[i10 + 1] = obj2;
                this.f9943c = i9 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object orDefault = getOrDefault(obj, null);
        return orDefault == null ? put(obj, obj2) : orDefault;
    }

    public final Object remove(Object obj) {
        int e5 = e(obj);
        if (e5 >= 0) {
            return j(e5);
        }
        return null;
    }

    public final Object replace(Object obj, Object obj2) {
        int e5 = e(obj);
        if (e5 >= 0) {
            return k(e5, obj2);
        }
        return null;
    }

    public final int size() {
        return this.f9943c;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f9943c * 28);
        sb.append('{');
        for (int i = 0; i < this.f9943c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object h5 = h(i);
            if (h5 != this) {
                sb.append(h5);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object l5 = l(i);
            if (l5 != this) {
                sb.append(l5);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public final boolean remove(Object obj, Object obj2) {
        int e5 = e(obj);
        if (e5 >= 0) {
            Object l5 = l(e5);
            if (obj2 == l5 || (obj2 != null && obj2.equals(l5))) {
                j(e5);
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int e5 = e(obj);
        if (e5 >= 0) {
            Object l5 = l(e5);
            if (l5 == obj2 || (obj2 != null && obj2.equals(l5))) {
                k(e5, obj3);
                return true;
            }
            return false;
        }
        return false;
    }

    public k(k kVar) {
        this();
        if (kVar != null) {
            i(kVar);
        }
    }
}
