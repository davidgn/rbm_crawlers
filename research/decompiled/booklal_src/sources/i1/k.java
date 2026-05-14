package i1;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class k implements h {

    /* renamed from: b  reason: collision with root package name */
    public final Map f7815b;

    /* renamed from: c  reason: collision with root package name */
    public volatile Map f7816c;

    public k(Map map) {
        this.f7815b = Collections.unmodifiableMap(map);
    }

    public final HashMap a() {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.f7815b.entrySet()) {
            List list = (List) entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                String str = ((j) list.get(i)).f7814a;
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str);
                    if (i != list.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String sb2 = sb.toString();
            if (!TextUtils.isEmpty(sb2)) {
                hashMap.put(entry.getKey(), sb2);
            }
        }
        return hashMap;
    }

    public final Map b() {
        if (this.f7816c == null) {
            synchronized (this) {
                try {
                    if (this.f7816c == null) {
                        this.f7816c = Collections.unmodifiableMap(a());
                    }
                } finally {
                }
            }
        }
        return this.f7816c;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof k) {
            return this.f7815b.equals(((k) obj).f7815b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7815b.hashCode();
    }

    public final String toString() {
        return "LazyHeaders{headers=" + this.f7815b + '}';
    }
}
