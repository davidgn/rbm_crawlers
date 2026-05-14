package c2;

import P1.c;
import android.util.SparseArray;
import e1.i;
import java.util.HashMap;
/* renamed from: c2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0303a {

    /* renamed from: a  reason: collision with root package name */
    public static final SparseArray f4859a = new SparseArray();

    /* renamed from: b  reason: collision with root package name */
    public static final HashMap f4860b;

    static {
        HashMap hashMap = new HashMap();
        f4860b = hashMap;
        hashMap.put(c.f2210a, 0);
        hashMap.put(c.f2211b, 1);
        hashMap.put(c.f2212c, 2);
        for (c cVar : hashMap.keySet()) {
            f4859a.append(((Integer) f4860b.get(cVar)).intValue(), cVar);
        }
    }

    public static int a(c cVar) {
        Integer num = (Integer) f4860b.get(cVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + cVar);
    }

    public static c b(int i) {
        c cVar = (c) f4859a.get(i);
        if (cVar != null) {
            return cVar;
        }
        throw new IllegalArgumentException(i.a(i, "Unknown Priority for value "));
    }
}
