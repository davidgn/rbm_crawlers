package k;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;
import j.InterfaceC0480b;
/* loaded from: classes.dex */
public final class q extends FrameLayout implements InterfaceC0480b {

    /* renamed from: a  reason: collision with root package name */
    public final CollapsibleActionView f8308a;

    public q(View view) {
        super(view.getContext());
        this.f8308a = (CollapsibleActionView) view;
        addView(view);
    }

    @Override // j.InterfaceC0480b
    public final void b() {
        this.f8308a.onActionViewExpanded();
    }

    @Override // j.InterfaceC0480b
    public final void e() {
        this.f8308a.onActionViewCollapsed();
    }
}
