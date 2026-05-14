package M;

import android.view.ViewConfiguration;
/* loaded from: classes.dex */
public abstract class d0 {
    public static int a(ViewConfiguration viewConfiguration, int i, int i4, int i5) {
        return viewConfiguration.getScaledMaximumFlingVelocity(i, i4, i5);
    }

    public static int b(ViewConfiguration viewConfiguration, int i, int i4, int i5) {
        return viewConfiguration.getScaledMinimumFlingVelocity(i, i4, i5);
    }
}
