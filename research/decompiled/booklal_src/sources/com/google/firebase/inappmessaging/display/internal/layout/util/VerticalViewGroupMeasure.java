package com.google.firebase.inappmessaging.display.internal.layout.util;

import android.view.View;
import com.google.firebase.inappmessaging.display.internal.Logging;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class VerticalViewGroupMeasure {

    /* renamed from: h  reason: collision with root package name */
    private int f6474h;
    private List<ViewMeasure> vms;

    /* renamed from: w  reason: collision with root package name */
    private int f6475w;

    public VerticalViewGroupMeasure(int i, int i4) {
        this.vms = new ArrayList();
        this.f6475w = i;
        this.f6474h = i4;
    }

    public void add(View view, boolean z4) {
        ViewMeasure viewMeasure = new ViewMeasure(view, z4);
        viewMeasure.setMaxDimens(this.f6475w, this.f6474h);
        this.vms.add(viewMeasure);
    }

    public void allocateSpace(int i) {
        float f5;
        ArrayList arrayList = new ArrayList();
        for (ViewMeasure viewMeasure : this.vms) {
            if (viewMeasure.isFlex()) {
                arrayList.add(viewMeasure);
            }
        }
        Collections.sort(arrayList, new Comparator<ViewMeasure>() { // from class: com.google.firebase.inappmessaging.display.internal.layout.util.VerticalViewGroupMeasure.1
            @Override // java.util.Comparator
            public int compare(ViewMeasure viewMeasure2, ViewMeasure viewMeasure3) {
                if (viewMeasure2.getDesiredHeight() > viewMeasure3.getDesiredHeight()) {
                    return -1;
                }
                return viewMeasure2.getDesiredHeight() < viewMeasure3.getDesiredHeight() ? 1 : 0;
            }
        });
        Iterator it = arrayList.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            i4 += ((ViewMeasure) it.next()).getDesiredHeight();
        }
        int size = arrayList.size();
        if (size >= 6) {
            throw new IllegalStateException("VerticalViewGroupMeasure only supports up to 5 children");
        }
        float f6 = 1.0f - ((size - 1) * 0.2f);
        Logging.logdPair("VVGM (minFrac, maxFrac)", 0.2f, f6);
        Iterator it2 = arrayList.iterator();
        float f7 = 0.0f;
        while (it2.hasNext()) {
            ViewMeasure viewMeasure2 = (ViewMeasure) it2.next();
            float desiredHeight = viewMeasure2.getDesiredHeight() / i4;
            if (desiredHeight > f6) {
                f7 += desiredHeight - f6;
                f5 = f6;
            } else {
                f5 = desiredHeight;
            }
            if (desiredHeight < 0.2f) {
                float min = Math.min(0.2f - desiredHeight, f7);
                f7 -= min;
                f5 = desiredHeight + min;
            }
            Logging.logdPair("\t(desired, granted)", desiredHeight, f5);
            viewMeasure2.setMaxDimens(this.f6475w, (int) (f5 * i));
        }
    }

    public int getTotalFixedHeight() {
        int i = 0;
        for (ViewMeasure viewMeasure : this.vms) {
            if (!viewMeasure.isFlex()) {
                i = viewMeasure.getDesiredHeight() + i;
            }
        }
        return i;
    }

    public int getTotalHeight() {
        int i = 0;
        for (ViewMeasure viewMeasure : this.vms) {
            i += viewMeasure.getDesiredHeight();
        }
        return i;
    }

    public List<ViewMeasure> getViews() {
        return this.vms;
    }

    public void reset(int i, int i4) {
        this.f6475w = i;
        this.f6474h = i4;
        this.vms = new ArrayList();
    }

    public VerticalViewGroupMeasure() {
        this.vms = new ArrayList();
        this.f6475w = 0;
        this.f6474h = 0;
    }
}
