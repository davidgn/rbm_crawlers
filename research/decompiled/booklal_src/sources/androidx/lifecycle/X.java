package androidx.lifecycle;

import java.io.Closeable;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
/* loaded from: classes.dex */
public final class X {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedHashMap f4443a = new LinkedHashMap();

    public final void a() {
        for (S s5 : this.f4443a.values()) {
            s5.f4433c = true;
            HashMap hashMap = s5.f4431a;
            if (hashMap != null) {
                synchronized (hashMap) {
                    try {
                        for (Object obj : s5.f4431a.values()) {
                            S.a(obj);
                        }
                    } finally {
                    }
                }
            }
            LinkedHashSet linkedHashSet = s5.f4432b;
            if (linkedHashSet != null) {
                synchronized (linkedHashSet) {
                    try {
                        for (Closeable closeable : s5.f4432b) {
                            S.a(closeable);
                        }
                    } finally {
                    }
                }
            }
            s5.b();
        }
        this.f4443a.clear();
    }
}
