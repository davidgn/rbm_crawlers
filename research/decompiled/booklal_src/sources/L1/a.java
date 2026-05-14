package L1;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.futuremind.recyclerviewfastscroll.FastScroller;
/* loaded from: classes.dex */
public final class a implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1685a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1686b;

    public /* synthetic */ a(ViewGroup viewGroup, int i) {
        this.f1685a = i;
        this.f1686b = viewGroup;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewAdded(View view, View view2) {
        ViewGroup viewGroup = this.f1686b;
        switch (this.f1685a) {
            case 0:
                int i = FastScroller.f5674t;
                ((FastScroller) viewGroup).b();
                return;
            default:
                ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = ((CoordinatorLayout) viewGroup).f3985v;
                if (onHierarchyChangeListener != null) {
                    onHierarchyChangeListener.onChildViewAdded(view, view2);
                    return;
                }
                return;
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewRemoved(View view, View view2) {
        ViewGroup viewGroup = this.f1686b;
        switch (this.f1685a) {
            case 0:
                int i = FastScroller.f5674t;
                ((FastScroller) viewGroup).b();
                return;
            default:
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewGroup;
                coordinatorLayout.p(2);
                ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = coordinatorLayout.f3985v;
                if (onHierarchyChangeListener != null) {
                    onHierarchyChangeListener.onChildViewRemoved(view, view2);
                    return;
                }
                return;
        }
    }
}
