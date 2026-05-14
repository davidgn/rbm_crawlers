package q2;

import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
/* renamed from: q2.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class View$OnTouchListenerC0781a implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    public final Dialog f9891a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9892b;

    /* renamed from: c  reason: collision with root package name */
    public final int f9893c;

    /* renamed from: d  reason: collision with root package name */
    public final int f9894d;

    public View$OnTouchListenerC0781a(Dialog dialog, Rect rect) {
        this.f9891a = dialog;
        this.f9892b = rect.left;
        this.f9893c = rect.top;
        this.f9894d = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(16908290);
        int left = findViewById.getLeft() + this.f9892b;
        int width = findViewById.getWidth() + left;
        int top = findViewById.getTop() + this.f9893c;
        if (new RectF(left, top, width, findViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i = this.f9894d;
            obtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f9891a.onTouchEvent(obtain);
    }
}
