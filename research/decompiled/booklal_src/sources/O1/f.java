package O1;

import android.graphics.Point;
import android.widget.ImageView;
import com.booklal.booklal.ChatActivity;
/* loaded from: classes.dex */
public final class f extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    public final Point f2146a;

    /* renamed from: b  reason: collision with root package name */
    public final c f2147b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(ChatActivity context, c reaction) {
        super(context);
        kotlin.jvm.internal.i.f(context, "context");
        kotlin.jvm.internal.i.f(reaction, "reaction");
        this.f2147b = reaction;
        this.f2146a = new Point();
        setScaleType(reaction.f2141b);
        setImageDrawable(reaction.f2140a);
    }

    public final Point getLocation() {
        Point point = this.f2146a;
        if (point.x == 0 || point.y == 0) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            point.set(iArr[0], iArr[1]);
        }
        return point;
    }

    public final c getReaction() {
        return this.f2147b;
    }

    @Override // android.view.View
    public final void onLayout(boolean z4, int i, int i4, int i5, int i6) {
        super.onLayout(z4, i, i4, i5, i6);
        getLocation().set(0, 0);
    }
}
