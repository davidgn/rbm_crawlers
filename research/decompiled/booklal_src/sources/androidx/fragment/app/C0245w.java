package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import androidx.lifecycle.InterfaceC0267t;
/* renamed from: androidx.fragment.app.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0245w implements androidx.lifecycle.C, I.e {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4355a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4356b;

    public /* synthetic */ C0245w(Object obj, int i) {
        this.f4355a = i;
        this.f4356b = obj;
    }

    @Override // I.e
    public void a() {
        ((v0) this.f4356b).a();
    }

    @Override // androidx.lifecycle.C
    public void b(Object obj) {
        if (((InterfaceC0267t) obj) != null) {
            r rVar = (r) this.f4356b;
            if (r.access$200(rVar)) {
                View requireView = rVar.requireView();
                if (requireView.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                if (r.access$000(rVar) != null) {
                    if (Log.isLoggable("FragmentManager", 3)) {
                        Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + r.access$000(rVar));
                    }
                    r.access$000(rVar).setContentView(requireView);
                }
            }
        }
    }
}
