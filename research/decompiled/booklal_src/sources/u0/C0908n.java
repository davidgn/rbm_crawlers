package u0;

import android.view.View;
/* renamed from: u0.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0908n {

    /* renamed from: a  reason: collision with root package name */
    public androidx.emoji2.text.g f10882a;

    /* renamed from: b  reason: collision with root package name */
    public int f10883b;

    /* renamed from: c  reason: collision with root package name */
    public int f10884c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f10885d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f10886e;

    public C0908n() {
        d();
    }

    public final void a() {
        this.f10884c = this.f10885d ? this.f10882a.g() : this.f10882a.k();
    }

    public final void b(View view, int i) {
        if (this.f10885d) {
            this.f10884c = this.f10882a.m() + this.f10882a.b(view);
        } else {
            this.f10884c = this.f10882a.e(view);
        }
        this.f10883b = i;
    }

    public final void c(View view, int i) {
        int m4 = this.f10882a.m();
        if (m4 >= 0) {
            b(view, i);
            return;
        }
        this.f10883b = i;
        if (!this.f10885d) {
            int e5 = this.f10882a.e(view);
            int k5 = e5 - this.f10882a.k();
            this.f10884c = e5;
            if (k5 > 0) {
                int g5 = (this.f10882a.g() - Math.min(0, (this.f10882a.g() - m4) - this.f10882a.b(view))) - (this.f10882a.c(view) + e5);
                if (g5 < 0) {
                    this.f10884c -= Math.min(k5, -g5);
                    return;
                }
                return;
            }
            return;
        }
        int g6 = (this.f10882a.g() - m4) - this.f10882a.b(view);
        this.f10884c = this.f10882a.g() - g6;
        if (g6 > 0) {
            int c5 = this.f10884c - this.f10882a.c(view);
            int k6 = this.f10882a.k();
            int min = c5 - (Math.min(this.f10882a.e(view) - k6, 0) + k6);
            if (min < 0) {
                this.f10884c = Math.min(g6, -min) + this.f10884c;
            }
        }
    }

    public final void d() {
        this.f10883b = -1;
        this.f10884c = Integer.MIN_VALUE;
        this.f10885d = false;
        this.f10886e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.f10883b + ", mCoordinate=" + this.f10884c + ", mLayoutFromEnd=" + this.f10885d + ", mValid=" + this.f10886e + '}';
    }
}
