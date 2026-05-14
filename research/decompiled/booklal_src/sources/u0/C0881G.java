package u0;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;
/* renamed from: u0.G  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0881G extends ViewGroup.MarginLayoutParams {

    /* renamed from: a  reason: collision with root package name */
    public W f10682a;

    /* renamed from: b  reason: collision with root package name */
    public final Rect f10683b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f10684c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f10685d;

    public C0881G(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10683b = new Rect();
        this.f10684c = true;
        this.f10685d = false;
    }

    public C0881G(int i, int i4) {
        super(i, i4);
        this.f10683b = new Rect();
        this.f10684c = true;
        this.f10685d = false;
    }

    public C0881G(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f10683b = new Rect();
        this.f10684c = true;
        this.f10685d = false;
    }

    public C0881G(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f10683b = new Rect();
        this.f10684c = true;
        this.f10685d = false;
    }

    public C0881G(C0881G c0881g) {
        super((ViewGroup.LayoutParams) c0881g);
        this.f10683b = new Rect();
        this.f10684c = true;
        this.f10685d = false;
    }
}
