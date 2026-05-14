package androidx.activity;

import android.app.Activity;
import android.window.OnBackInvokedDispatcher;
/* renamed from: androidx.activity.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0221h {

    /* renamed from: a  reason: collision with root package name */
    public static final C0221h f3662a = new Object();

    public final OnBackInvokedDispatcher a(Activity activity) {
        kotlin.jvm.internal.i.f(activity, "activity");
        OnBackInvokedDispatcher onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
        kotlin.jvm.internal.i.e(onBackInvokedDispatcher, "activity.getOnBackInvokedDispatcher()");
        return onBackInvokedDispatcher;
    }
}
