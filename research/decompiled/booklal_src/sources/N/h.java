package N;

import android.view.accessibility.AccessibilityNodeInfo;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final AccessibilityNodeInfo.CollectionItemInfo f2009a;

    public h(AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo) {
        this.f2009a = collectionItemInfo;
    }

    public static h a(boolean z4, int i, int i4, int i5, int i6) {
        return new h(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i4, i5, i6, false, z4));
    }
}
