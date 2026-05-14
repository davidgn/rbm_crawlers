package androidx.emoji2.text;

import android.util.SparseArray;
/* loaded from: classes.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final SparseArray f4111a;

    /* renamed from: b  reason: collision with root package name */
    public l f4112b;

    public p(int i) {
        this.f4111a = new SparseArray(i);
    }

    public final void a(l lVar, int i, int i4) {
        int a5 = lVar.a(i);
        SparseArray sparseArray = this.f4111a;
        p pVar = sparseArray == null ? null : (p) sparseArray.get(a5);
        if (pVar == null) {
            pVar = new p(1);
            sparseArray.put(lVar.a(i), pVar);
        }
        if (i4 > i) {
            pVar.a(lVar, i + 1, i4);
        } else {
            pVar.f4112b = lVar;
        }
    }
}
