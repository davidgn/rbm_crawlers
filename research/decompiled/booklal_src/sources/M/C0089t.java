package M;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* renamed from: M.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0089t {

    /* renamed from: a  reason: collision with root package name */
    public ViewParent f1879a;

    /* renamed from: b  reason: collision with root package name */
    public ViewParent f1880b;

    /* renamed from: c  reason: collision with root package name */
    public final ViewGroup f1881c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1882d;

    /* renamed from: e  reason: collision with root package name */
    public int[] f1883e;

    public C0089t(ViewGroup viewGroup) {
        this.f1881c = viewGroup;
    }

    public final boolean a(float f5, float f6, boolean z4) {
        ViewParent e5;
        if (!this.f1882d || (e5 = e(0)) == null) {
            return false;
        }
        try {
            return h0.a(e5, this.f1881c, f5, f6, z4);
        } catch (AbstractMethodError e6) {
            Log.e("ViewParentCompat", "ViewParent " + e5 + " does not implement interface method onNestedFling", e6);
            return false;
        }
    }

    public final boolean b(float f5, float f6) {
        ViewParent e5;
        if (!this.f1882d || (e5 = e(0)) == null) {
            return false;
        }
        try {
            return h0.b(e5, this.f1881c, f5, f6);
        } catch (AbstractMethodError e6) {
            Log.e("ViewParentCompat", "ViewParent " + e5 + " does not implement interface method onNestedPreFling", e6);
            return false;
        }
    }

    public final boolean c(int i, int i4, int i5, int[] iArr, int[] iArr2) {
        ViewParent e5;
        int i6;
        int i7;
        int[] iArr3;
        if (!this.f1882d || (e5 = e(i5)) == null) {
            return false;
        }
        if (i == 0 && i4 == 0) {
            if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
                return false;
            }
            return false;
        }
        ViewGroup viewGroup = this.f1881c;
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            i6 = iArr2[0];
            i7 = iArr2[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr == null) {
            if (this.f1883e == null) {
                this.f1883e = new int[2];
            }
            iArr3 = this.f1883e;
        } else {
            iArr3 = iArr;
        }
        iArr3[0] = 0;
        iArr3[1] = 0;
        if (e5 instanceof InterfaceC0090u) {
            ((InterfaceC0090u) e5).f(viewGroup, i, i4, iArr3, i5);
        } else if (i5 == 0) {
            try {
                h0.c(e5, viewGroup, i, i4, iArr3);
            } catch (AbstractMethodError e6) {
                Log.e("ViewParentCompat", "ViewParent " + e5 + " does not implement interface method onNestedPreScroll", e6);
            }
        }
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i6;
            iArr2[1] = iArr2[1] - i7;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    public final boolean d(int i, int i4, int i5, int i6, int[] iArr, int i7, int[] iArr2) {
        ViewParent e5;
        int i8;
        int i9;
        int[] iArr3;
        if (!this.f1882d || (e5 = e(i7)) == null) {
            return false;
        }
        if (i == 0 && i4 == 0 && i5 == 0 && i6 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        ViewGroup viewGroup = this.f1881c;
        if (iArr != null) {
            viewGroup.getLocationInWindow(iArr);
            i8 = iArr[0];
            i9 = iArr[1];
        } else {
            i8 = 0;
            i9 = 0;
        }
        if (iArr2 == null) {
            if (this.f1883e == null) {
                this.f1883e = new int[2];
            }
            int[] iArr4 = this.f1883e;
            iArr4[0] = 0;
            iArr4[1] = 0;
            iArr3 = iArr4;
        } else {
            iArr3 = iArr2;
        }
        if (e5 instanceof InterfaceC0091v) {
            ((InterfaceC0091v) e5).a(viewGroup, i, i4, i5, i6, i7, iArr3);
        } else {
            iArr3[0] = iArr3[0] + i5;
            iArr3[1] = iArr3[1] + i6;
            if (e5 instanceof InterfaceC0090u) {
                ((InterfaceC0090u) e5).b(viewGroup, i, i4, i5, i6, i7);
            } else if (i7 == 0) {
                try {
                    h0.d(e5, viewGroup, i, i4, i5, i6);
                } catch (AbstractMethodError e6) {
                    Log.e("ViewParentCompat", "ViewParent " + e5 + " does not implement interface method onNestedScroll", e6);
                }
            }
        }
        if (iArr != null) {
            viewGroup.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i8;
            iArr[1] = iArr[1] - i9;
        }
        return true;
    }

    public final ViewParent e(int i) {
        if (i != 0) {
            if (i != 1) {
                return null;
            }
            return this.f1880b;
        }
        return this.f1879a;
    }

    public final boolean f(int i) {
        return e(i) != null;
    }

    public final boolean g(int i, int i4) {
        boolean f5;
        if (f(i4)) {
            return true;
        }
        if (this.f1882d) {
            View view = this.f1881c;
            ViewParent parent = view.getParent();
            View view2 = view;
            while (parent != null) {
                boolean z4 = parent instanceof InterfaceC0090u;
                if (z4) {
                    f5 = ((InterfaceC0090u) parent).c(view2, view, i, i4);
                } else {
                    if (i4 == 0) {
                        try {
                            f5 = h0.f(parent, view2, view, i);
                        } catch (AbstractMethodError e5) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e5);
                        }
                    }
                    f5 = false;
                }
                if (f5) {
                    if (i4 == 0) {
                        this.f1879a = parent;
                    } else if (i4 == 1) {
                        this.f1880b = parent;
                    }
                    if (z4) {
                        ((InterfaceC0090u) parent).d(view2, view, i, i4);
                    } else if (i4 == 0) {
                        try {
                            h0.e(parent, view2, view, i);
                        } catch (AbstractMethodError e6) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e6);
                        }
                    }
                    return true;
                }
                if (parent instanceof View) {
                    view2 = (View) parent;
                }
                parent = parent.getParent();
                view2 = view2;
            }
        }
        return false;
    }

    public final void h(int i) {
        ViewParent e5 = e(i);
        if (e5 != null) {
            boolean z4 = e5 instanceof InterfaceC0090u;
            ViewGroup viewGroup = this.f1881c;
            if (z4) {
                ((InterfaceC0090u) e5).e(viewGroup, i);
            } else if (i == 0) {
                try {
                    h0.g(e5, viewGroup);
                } catch (AbstractMethodError e6) {
                    Log.e("ViewParentCompat", "ViewParent " + e5 + " does not implement interface method onStopNestedScroll", e6);
                }
            }
            if (i == 0) {
                this.f1879a = null;
            } else if (i != 1) {
            } else {
                this.f1880b = null;
            }
        }
    }
}
