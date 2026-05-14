package z2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;
import java.util.Iterator;
import y2.C0995a;
/* loaded from: classes2.dex */
public final class n extends t {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f11714b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Matrix f11715c;

    public n(ArrayList arrayList, Matrix matrix) {
        this.f11714b = arrayList;
        this.f11715c = matrix;
    }

    @Override // z2.t
    public final void a(Matrix matrix, C0995a c0995a, int i, Canvas canvas) {
        Iterator it = this.f11714b.iterator();
        while (it.hasNext()) {
            ((t) it.next()).a(this.f11715c, c0995a, i, canvas);
        }
    }
}
