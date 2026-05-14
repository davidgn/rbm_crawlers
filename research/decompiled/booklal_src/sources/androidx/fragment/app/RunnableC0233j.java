package androidx.fragment.app;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
/* renamed from: androidx.fragment.app.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0233j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4283a = 1;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4284b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f4285c;

    public RunnableC0233j(r0 r0Var, View view, Rect rect) {
        this.f4284b = view;
        this.f4285c = rect;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4283a) {
            case 0:
                r0.g((Rect) this.f4285c, (View) this.f4284b);
                return;
            default:
                ((C0236m) this.f4284b).a();
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Transition for operation " + ((v0) this.f4285c) + "has completed");
                    return;
                }
                return;
        }
    }

    public RunnableC0233j(C0236m c0236m, v0 v0Var) {
        this.f4284b = c0236m;
        this.f4285c = v0Var;
    }
}
