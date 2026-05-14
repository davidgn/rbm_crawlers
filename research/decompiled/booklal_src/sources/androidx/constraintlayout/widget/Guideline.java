package androidx.constraintlayout.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import x.C0961d;
/* loaded from: classes.dex */
public class Guideline extends View {
    public Guideline(Context context) {
        super(context);
        super.setVisibility(8);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i4) {
        setMeasuredDimension(0, 0);
    }

    public void setGuidelineBegin(int i) {
        C0961d c0961d = (C0961d) getLayoutParams();
        c0961d.f11294a = i;
        setLayoutParams(c0961d);
    }

    public void setGuidelineEnd(int i) {
        C0961d c0961d = (C0961d) getLayoutParams();
        c0961d.f11296b = i;
        setLayoutParams(c0961d);
    }

    public void setGuidelinePercent(float f5) {
        C0961d c0961d = (C0961d) getLayoutParams();
        c0961d.f11298c = f5;
        setLayoutParams(c0961d);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
    }

    public Guideline(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }
}
