package B1;

import android.widget.Scroller;
/* loaded from: classes.dex */
public final class d extends Scroller {

    /* renamed from: a  reason: collision with root package name */
    public int f200a;

    @Override // android.widget.Scroller
    public final void startScroll(int i, int i4, int i5, int i6, int i7) {
        super.startScroll(i, i4, i5, i6, this.f200a);
    }

    @Override // android.widget.Scroller
    public final void startScroll(int i, int i4, int i5, int i6) {
        super.startScroll(i, i4, i5, i6, this.f200a);
    }
}
