package androidx.activity;

import android.window.OnBackInvokedCallback;
import k4.InterfaceC0558a;
/* loaded from: classes.dex */
public final /* synthetic */ class B implements OnBackInvokedCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f3625a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f3626b;

    public /* synthetic */ B(Object obj, int i) {
        this.f3625a = i;
        this.f3626b = obj;
    }

    public final void onBackInvoked() {
        switch (this.f3625a) {
            case 0:
                InterfaceC0558a onBackInvoked = (InterfaceC0558a) this.f3626b;
                kotlin.jvm.internal.i.f(onBackInvoked, "$onBackInvoked");
                onBackInvoked.invoke();
                return;
            case 1:
                ((h.z) this.f3626b).D();
                return;
            default:
                ((Runnable) this.f3626b).run();
                return;
        }
    }
}
