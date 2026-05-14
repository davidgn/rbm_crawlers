package com.google.firebase.inappmessaging.display.internal.layout.util;

import android.view.View;
import android.widget.ScrollView;
/* loaded from: classes2.dex */
public class ViewMeasure {
    private boolean flex;
    private int maxHeight;
    private int maxWidth;
    private View view;

    public ViewMeasure(View view, boolean z4) {
        this.view = view;
        this.flex = z4;
    }

    public int getDesiredHeight() {
        if (this.view.getVisibility() == 8) {
            return 0;
        }
        View view = this.view;
        if (view instanceof ScrollView) {
            ScrollView scrollView = (ScrollView) view;
            int paddingBottom = scrollView.getPaddingBottom();
            return scrollView.getChildAt(0).getMeasuredHeight() + scrollView.getPaddingTop() + paddingBottom;
        }
        return view.getMeasuredHeight();
    }

    public int getDesiredWidth() {
        if (this.view.getVisibility() == 8) {
            return 0;
        }
        return this.view.getMeasuredHeight();
    }

    public int getMaxHeight() {
        return this.maxHeight;
    }

    public int getMaxWidth() {
        return this.maxWidth;
    }

    public View getView() {
        return this.view;
    }

    public boolean isFlex() {
        return this.flex;
    }

    public void preMeasure(int i, int i4) {
        MeasureUtils.measureAtMost(this.view, i, i4);
    }

    public void setMaxDimens(int i, int i4) {
        this.maxWidth = i;
        this.maxHeight = i4;
    }
}
