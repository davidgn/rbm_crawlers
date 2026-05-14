package androidx.cardview.widget;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    public Drawable f3904a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ CardView f3905b;

    public a(CardView cardView) {
        this.f3905b = cardView;
    }

    public final void a(int i, int i4, int i5, int i6) {
        CardView cardView = this.f3905b;
        cardView.mShadowBounds.set(i, i4, i5, i6);
        Rect rect = cardView.mContentPadding;
        super/*android.view.View*/.setPadding(i + rect.left, i4 + rect.top, i5 + rect.right, i6 + rect.bottom);
    }
}
