package com.google.firebase.inappmessaging.display.internal.layout.util;

import android.view.View;
import com.google.firebase.inappmessaging.display.internal.Logging;
/* loaded from: classes2.dex */
public class MeasureUtils {
    private static void measure(View view, int i, int i4, int i5, int i6) {
        Logging.logdPair("\tdesired (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
        if (view.getVisibility() == 8) {
            i = 0;
            i4 = 0;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(i, i5), View.MeasureSpec.makeMeasureSpec(i4, i6));
        Logging.logdPair("\tactual (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public static void measureAtMost(View view, int i, int i4) {
        measure(view, i, i4, Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public static void measureExactly(View view, int i, int i4) {
        measure(view, i, i4, 1073741824, 1073741824);
    }

    public static void measureFullHeight(View view, int i, int i4) {
        measure(view, i, i4, Integer.MIN_VALUE, 1073741824);
    }

    public static void measureFullWidth(View view, int i, int i4) {
        measure(view, i, i4, 1073741824, Integer.MIN_VALUE);
    }
}
