package androidx.activity;

import android.window.BackEvent;
/* renamed from: androidx.activity.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0214a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0214a f3650a = new Object();

    public final BackEvent a(float f5, float f6, float f7, int i) {
        return new BackEvent(f5, f6, f7, i);
    }

    public final float b(BackEvent backEvent) {
        kotlin.jvm.internal.i.f(backEvent, "backEvent");
        return backEvent.getProgress();
    }

    public final int c(BackEvent backEvent) {
        kotlin.jvm.internal.i.f(backEvent, "backEvent");
        return backEvent.getSwipeEdge();
    }

    public final float d(BackEvent backEvent) {
        kotlin.jvm.internal.i.f(backEvent, "backEvent");
        return backEvent.getTouchX();
    }

    public final float e(BackEvent backEvent) {
        kotlin.jvm.internal.i.f(backEvent, "backEvent");
        return backEvent.getTouchY();
    }
}
