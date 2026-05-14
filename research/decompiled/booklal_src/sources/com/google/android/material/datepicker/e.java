package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.booklal.booklal.R;
import java.util.Calendar;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class e extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final Calendar f5863a;

    /* renamed from: b  reason: collision with root package name */
    public final int f5864b;

    /* renamed from: c  reason: collision with root package name */
    public final int f5865c;

    public e() {
        Calendar c5 = u.c(null);
        this.f5863a = c5;
        this.f5864b = c5.getMaximum(7);
        this.f5865c = c5.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f5864b;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        int i4 = this.f5864b;
        if (i >= i4) {
            return null;
        }
        int i5 = i + this.f5865c;
        if (i5 > i4) {
            i5 -= i4;
        }
        return Integer.valueOf(i5);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        int i4 = i + this.f5865c;
        int i5 = this.f5864b;
        if (i4 > i5) {
            i4 -= i5;
        }
        Calendar calendar = this.f5863a;
        calendar.set(7, i4);
        textView.setText(calendar.getDisplayName(7, 4, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
