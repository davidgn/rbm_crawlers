package b1;

import android.text.TextUtils;
import y3.C0998c;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: e  reason: collision with root package name */
    public static final C0998c f4792e = new C0998c(15);

    /* renamed from: a  reason: collision with root package name */
    public final Object f4793a;

    /* renamed from: b  reason: collision with root package name */
    public final f f4794b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4795c;

    /* renamed from: d  reason: collision with root package name */
    public volatile byte[] f4796d;

    public g(String str, Object obj, f fVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        this.f4795c = str;
        this.f4793a = obj;
        this.f4794b = fVar;
    }

    public static g a(Object obj, String str) {
        return new g(str, obj, f4792e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.f4795c.equals(((g) obj).f4795c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4795c.hashCode();
    }

    public final String toString() {
        return C.a.p(new StringBuilder("Option{key='"), this.f4795c, "'}");
    }
}
