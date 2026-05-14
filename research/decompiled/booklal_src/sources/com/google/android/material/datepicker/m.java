package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;
/* loaded from: classes2.dex */
public final class m implements Comparable, Parcelable {
    public static final Parcelable.Creator<m> CREATOR = new D0.k(21);

    /* renamed from: a  reason: collision with root package name */
    public final Calendar f5897a;

    /* renamed from: b  reason: collision with root package name */
    public final int f5898b;

    /* renamed from: c  reason: collision with root package name */
    public final int f5899c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5900d;

    /* renamed from: e  reason: collision with root package name */
    public final int f5901e;

    /* renamed from: f  reason: collision with root package name */
    public final long f5902f;

    /* renamed from: l  reason: collision with root package name */
    public String f5903l;

    public m(Calendar calendar) {
        calendar.set(5, 1);
        Calendar a5 = u.a(calendar);
        this.f5897a = a5;
        this.f5898b = a5.get(2);
        this.f5899c = a5.get(1);
        this.f5900d = a5.getMaximum(7);
        this.f5901e = a5.getActualMaximum(5);
        this.f5902f = a5.getTimeInMillis();
    }

    public static m b(int i, int i4) {
        Calendar c5 = u.c(null);
        c5.set(1, i);
        c5.set(2, i4);
        return new m(c5);
    }

    public static m c(long j5) {
        Calendar c5 = u.c(null);
        c5.setTimeInMillis(j5);
        return new m(c5);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public final int compareTo(m mVar) {
        return this.f5897a.compareTo(mVar.f5897a);
    }

    public final int d() {
        Calendar calendar = this.f5897a;
        int firstDayOfWeek = calendar.get(7) - calendar.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.f5900d : firstDayOfWeek;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String e(Context context) {
        if (this.f5903l == null) {
            long timeInMillis = this.f5897a.getTimeInMillis();
            this.f5903l = DateUtils.formatDateTime(context, timeInMillis - TimeZone.getDefault().getOffset(timeInMillis), 36);
        }
        return this.f5903l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            return this.f5898b == mVar.f5898b && this.f5899c == mVar.f5899c;
        }
        return false;
    }

    public final int f(m mVar) {
        if (this.f5897a instanceof GregorianCalendar) {
            return (mVar.f5898b - this.f5898b) + ((mVar.f5899c - this.f5899c) * 12);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f5898b), Integer.valueOf(this.f5899c)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f5899c);
        parcel.writeInt(this.f5898b);
    }
}
