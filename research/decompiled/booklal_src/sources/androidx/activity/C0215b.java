package androidx.activity;

import android.window.BackEvent;
/* renamed from: androidx.activity.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0215b {

    /* renamed from: a  reason: collision with root package name */
    public final float f3651a;

    /* renamed from: b  reason: collision with root package name */
    public final float f3652b;

    /* renamed from: c  reason: collision with root package name */
    public final float f3653c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3654d;

    public C0215b(BackEvent backEvent) {
        kotlin.jvm.internal.i.f(backEvent, "backEvent");
        C0214a c0214a = C0214a.f3650a;
        float d2 = c0214a.d(backEvent);
        float e5 = c0214a.e(backEvent);
        float b5 = c0214a.b(backEvent);
        int c5 = c0214a.c(backEvent);
        this.f3651a = d2;
        this.f3652b = e5;
        this.f3653c = b5;
        this.f3654d = c5;
    }

    public final String toString() {
        return "BackEventCompat{touchX=" + this.f3651a + ", touchY=" + this.f3652b + ", progress=" + this.f3653c + ", swipeEdge=" + this.f3654d + '}';
    }
}
