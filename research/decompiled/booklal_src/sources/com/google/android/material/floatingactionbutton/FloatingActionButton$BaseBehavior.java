package com.google.android.material.floatingactionbutton;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import e2.AbstractC0396a;
import z.c;
import z.e;
/* loaded from: classes2.dex */
public class FloatingActionButton$BaseBehavior<T> extends c {
    public FloatingActionButton$BaseBehavior() {
    }

    @Override // z.c
    public final boolean a(View view) {
        throw new ClassCastException();
    }

    @Override // z.c
    public final void c(e eVar) {
        if (eVar.f11627h == 0) {
            eVar.f11627h = 80;
        }
    }

    @Override // z.c
    public final boolean d(View view, View view2) {
        throw new ClassCastException();
    }

    @Override // z.c
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i) {
        throw new ClassCastException();
    }

    public FloatingActionButton$BaseBehavior(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0396a.f7202k);
        obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
    }
}
