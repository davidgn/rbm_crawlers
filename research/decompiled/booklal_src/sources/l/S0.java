package l;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
/* loaded from: classes.dex */
public final class S0 extends TouchDelegate {

    /* renamed from: a  reason: collision with root package name */
    public final View f8449a;

    /* renamed from: b  reason: collision with root package name */
    public final Rect f8450b;

    /* renamed from: c  reason: collision with root package name */
    public final Rect f8451c;

    /* renamed from: d  reason: collision with root package name */
    public final Rect f8452d;

    /* renamed from: e  reason: collision with root package name */
    public final int f8453e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f8454f;

    public S0(Rect rect, Rect rect2, View view) {
        super(rect, view);
        int scaledTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.f8453e = scaledTouchSlop;
        Rect rect3 = new Rect();
        this.f8450b = rect3;
        Rect rect4 = new Rect();
        this.f8452d = rect4;
        Rect rect5 = new Rect();
        this.f8451c = rect5;
        rect3.set(rect);
        rect4.set(rect);
        int i = -scaledTouchSlop;
        rect4.inset(i, i);
        rect5.set(rect2);
        this.f8449a = view;
    }

    @Override // android.view.TouchDelegate
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z4;
        boolean z5;
        int x5 = (int) motionEvent.getX();
        int y5 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z6 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                z5 = this.f8454f;
                if (z5 && !this.f8452d.contains(x5, y5)) {
                    z6 = z5;
                    z4 = false;
                }
            } else {
                if (action == 3) {
                    z5 = this.f8454f;
                    this.f8454f = false;
                }
                z4 = true;
                z6 = false;
            }
            z6 = z5;
            z4 = true;
        } else {
            if (this.f8450b.contains(x5, y5)) {
                this.f8454f = true;
                z4 = true;
            }
            z4 = true;
            z6 = false;
        }
        if (z6) {
            Rect rect = this.f8451c;
            View view = this.f8449a;
            if (!z4 || rect.contains(x5, y5)) {
                motionEvent.setLocation(x5 - rect.left, y5 - rect.top);
            } else {
                motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
            }
            return view.dispatchTouchEvent(motionEvent);
        }
        return false;
    }
}
