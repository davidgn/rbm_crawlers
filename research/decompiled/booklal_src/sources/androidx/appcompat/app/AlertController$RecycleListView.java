package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;
import g.AbstractC0420a;
/* loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {

    /* renamed from: a  reason: collision with root package name */
    public final int f3688a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3689b;

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0420a.f7354t);
        this.f3689b = obtainStyledAttributes.getDimensionPixelOffset(0, -1);
        this.f3688a = obtainStyledAttributes.getDimensionPixelOffset(1, -1);
    }
}
