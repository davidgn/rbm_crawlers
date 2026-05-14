package B0;

import android.content.Context;
import android.os.Bundle;
import android.os.Trace;
import com.booklal.booklal.R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: d  reason: collision with root package name */
    public static volatile a f190d;

    /* renamed from: e  reason: collision with root package name */
    public static final Object f191e = new Object();

    /* renamed from: c  reason: collision with root package name */
    public final Context f194c;

    /* renamed from: b  reason: collision with root package name */
    public final HashSet f193b = new HashSet();

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f192a = new HashMap();

    public a(Context context) {
        this.f194c = context.getApplicationContext();
    }

    public static a c(Context context) {
        if (f190d == null) {
            synchronized (f191e) {
                try {
                    if (f190d == null) {
                        f190d = new a(context);
                    }
                } finally {
                }
            }
        }
        return f190d;
    }

    public final void a(Bundle bundle) {
        HashSet hashSet;
        String string = this.f194c.getString(R.string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet2 = new HashSet();
                Iterator<String> it = bundle.keySet().iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    hashSet = this.f193b;
                    if (!hasNext) {
                        break;
                    }
                    String next = it.next();
                    if (string.equals(bundle.getString(next, null))) {
                        Class<?> cls = Class.forName(next);
                        if (b.class.isAssignableFrom(cls)) {
                            hashSet.add(cls);
                        }
                    }
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    b((Class) it2.next(), hashSet2);
                }
            } catch (ClassNotFoundException e5) {
                throw new c(e5);
            }
        }
    }

    public final Object b(Class cls, HashSet hashSet) {
        Object obj;
        if (S4.b.v()) {
            try {
                Trace.beginSection(cls.getSimpleName());
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
        if (hashSet.contains(cls)) {
            String name = cls.getName();
            throw new IllegalStateException("Cannot initialize " + name + ". Cycle detected.");
        }
        HashMap hashMap = this.f192a;
        if (hashMap.containsKey(cls)) {
            obj = hashMap.get(cls);
        } else {
            hashSet.add(cls);
            b bVar = (b) cls.getDeclaredConstructor(null).newInstance(null);
            List<Class> dependencies = bVar.dependencies();
            if (!dependencies.isEmpty()) {
                for (Class cls2 : dependencies) {
                    if (!hashMap.containsKey(cls2)) {
                        b(cls2, hashSet);
                    }
                }
            }
            obj = bVar.a(this.f194c);
            hashSet.remove(cls);
            hashMap.put(cls, obj);
        }
        Trace.endSection();
        return obj;
    }
}
