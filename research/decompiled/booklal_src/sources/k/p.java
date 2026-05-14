package k;

import android.view.ActionProvider;
import android.view.View;
/* loaded from: classes.dex */
public final class p implements ActionProvider.VisibilityListener {

    /* renamed from: a  reason: collision with root package name */
    public final ActionProvider f8305a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ t f8306b;

    /* renamed from: c  reason: collision with root package name */
    public i1.D f8307c;

    public p(t tVar, ActionProvider actionProvider) {
        this.f8306b = tVar;
        this.f8305a = actionProvider;
    }

    public final View a(o oVar) {
        return this.f8305a.onCreateActionView(oVar);
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z4) {
        i1.D d2 = this.f8307c;
        if (d2 != null) {
            m mVar = ((o) d2.f7791b).f8297s;
            mVar.f8262m = true;
            mVar.p(true);
        }
    }
}
