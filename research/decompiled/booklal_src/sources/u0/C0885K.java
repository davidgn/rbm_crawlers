package u0;

import android.util.SparseArray;
import java.util.Set;
/* renamed from: u0.K  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0885K {

    /* renamed from: a  reason: collision with root package name */
    public SparseArray f10690a;

    /* renamed from: b  reason: collision with root package name */
    public int f10691b;

    /* renamed from: c  reason: collision with root package name */
    public Set f10692c;

    public final C0884J a(int i) {
        SparseArray sparseArray = this.f10690a;
        C0884J c0884j = (C0884J) sparseArray.get(i);
        if (c0884j == null) {
            C0884J c0884j2 = new C0884J();
            sparseArray.put(i, c0884j2);
            return c0884j2;
        }
        return c0884j;
    }
}
