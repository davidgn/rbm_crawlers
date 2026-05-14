package Z3;

import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes2.dex */
public abstract class m extends l {
    public static void d0(ArrayList arrayList, Iterable elements) {
        kotlin.jvm.internal.i.f(elements, "elements");
        if (elements instanceof Collection) {
            arrayList.addAll((Collection) elements);
            return;
        }
        for (Object obj : elements) {
            arrayList.add(obj);
        }
    }
}
