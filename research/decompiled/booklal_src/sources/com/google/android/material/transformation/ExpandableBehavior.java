package com.google.android.material.transformation;

import M.AbstractC0070a0;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.ArrayList;
import java.util.WeakHashMap;
import z.c;
@Deprecated
/* loaded from: classes2.dex */
public abstract class ExpandableBehavior extends c {
    public ExpandableBehavior() {
    }

    @Override // z.c
    public abstract boolean b(View view, View view2);

    @Override // z.c
    public final boolean d(View view, View view2) {
        view2.getClass();
        throw new ClassCastException();
    }

    @Override // z.c
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i) {
        WeakHashMap weakHashMap = AbstractC0070a0.f1813a;
        if (!view.isLaidOut()) {
            ArrayList j5 = coordinatorLayout.j(view);
            int size = j5.size();
            for (int i4 = 0; i4 < size; i4++) {
                b(view, (View) j5.get(i4));
            }
        }
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
    }
}
