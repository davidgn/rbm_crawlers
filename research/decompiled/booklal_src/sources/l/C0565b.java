package l;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ActionBarContainer;
/* renamed from: l.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0565b extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public final ActionBarContainer f8508a;

    public C0565b(ActionBarContainer actionBarContainer) {
        this.f8508a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f8508a;
        if (actionBarContainer.f3724l) {
            Drawable drawable = actionBarContainer.f3723f;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f3721d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Drawable drawable3 = actionBarContainer.f3722e;
        if (drawable3 == null || !actionBarContainer.f3725m) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        ActionBarContainer actionBarContainer = this.f8508a;
        if (actionBarContainer.f3724l) {
            if (actionBarContainer.f3723f != null) {
                actionBarContainer.f3721d.getOutline(outline);
                return;
            }
            return;
        }
        Drawable drawable = actionBarContainer.f3721d;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
