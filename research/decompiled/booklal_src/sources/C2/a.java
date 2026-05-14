package C2;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.booklal.booklal.R;
import j.C0482d;
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f335a = {16842752, R.attr.theme};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f336b = {R.attr.materialThemeOverlay};

    public static Context a(Context context, AttributeSet attributeSet, int i, int i4) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f336b, i, i4);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        boolean z4 = (context instanceof C0482d) && ((C0482d) context).f7877a == resourceId;
        if (resourceId == 0 || z4) {
            return context;
        }
        C0482d c0482d = new C0482d(context, resourceId);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f335a);
        int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
        int resourceId3 = obtainStyledAttributes2.getResourceId(1, 0);
        obtainStyledAttributes2.recycle();
        if (resourceId2 == 0) {
            resourceId2 = resourceId3;
        }
        if (resourceId2 != 0) {
            c0482d.getTheme().applyStyle(resourceId2, true);
        }
        return c0482d;
    }
}
