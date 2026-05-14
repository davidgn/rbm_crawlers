package y1;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: y1.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0991h {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedHashMap f11542a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b  reason: collision with root package name */
    public final long f11543b;

    /* renamed from: c  reason: collision with root package name */
    public long f11544c;

    public C0991h(long j5) {
        this.f11543b = j5;
    }

    public final synchronized Object a(Object obj) {
        return this.f11542a.get(obj);
    }

    public int b(Object obj) {
        return 1;
    }

    public void c(Object obj, Object obj2) {
    }

    public final synchronized Object d(Object obj, Object obj2) {
        long b5 = b(obj2);
        if (b5 >= this.f11543b) {
            c(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.f11544c += b5;
        }
        Object put = this.f11542a.put(obj, obj2);
        if (put != null) {
            this.f11544c -= b(put);
            if (!put.equals(obj2)) {
                c(obj, put);
            }
        }
        e(this.f11543b);
        return put;
    }

    public final synchronized void e(long j5) {
        while (this.f11544c > j5) {
            Iterator it = this.f11542a.entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            Object value = entry.getValue();
            this.f11544c -= b(value);
            Object key = entry.getKey();
            it.remove();
            c(key, value);
        }
    }
}
