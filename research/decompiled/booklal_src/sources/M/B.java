package M;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.PointerIcon;
/* loaded from: classes.dex */
public abstract class B {
    public static PointerIcon a(Bitmap bitmap, float f5, float f6) {
        return PointerIcon.create(bitmap, f5, f6);
    }

    public static PointerIcon b(Context context, int i) {
        return PointerIcon.getSystemIcon(context, i);
    }

    public static PointerIcon c(Resources resources, int i) {
        return PointerIcon.load(resources, i);
    }
}
