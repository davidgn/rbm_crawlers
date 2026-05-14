package Q4;

import java.util.RandomAccess;
/* loaded from: classes2.dex */
public final class q extends Z3.c implements RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    public final j[] f2360a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f2361b;

    public q(j[] jVarArr, int[] iArr) {
        this.f2360a = jVarArr;
        this.f2361b = iArr;
    }

    @Override // Z3.c
    public final int a() {
        return this.f2360a.length;
    }

    @Override // Z3.c, java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof j) {
            return super.contains((j) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.f2360a[i];
    }

    @Override // Z3.c, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof j) {
            return super.indexOf((j) obj);
        }
        return -1;
    }

    @Override // Z3.c, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof j) {
            return super.lastIndexOf((j) obj);
        }
        return -1;
    }
}
