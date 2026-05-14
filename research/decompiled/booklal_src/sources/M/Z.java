package M;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.booklal.booklal.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class Z {

    /* renamed from: d  reason: collision with root package name */
    public static final ArrayList f1808d = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    public WeakHashMap f1809a;

    /* renamed from: b  reason: collision with root package name */
    public SparseArray f1810b;

    /* renamed from: c  reason: collision with root package name */
    public WeakReference f1811c;

    public final View a(View view) {
        int size;
        WeakHashMap weakHashMap = this.f1809a;
        if (weakHashMap != null && weakHashMap.containsKey(view)) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View a5 = a(viewGroup.getChildAt(childCount));
                    if (a5 != null) {
                        return a5;
                    }
                }
            }
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList != null && arrayList.size() - 1 >= 0) {
                arrayList.get(size).getClass();
                throw new ClassCastException();
            }
        }
        return null;
    }
}
