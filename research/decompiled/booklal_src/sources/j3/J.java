package j3;

import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public final class J {

    /* renamed from: d  reason: collision with root package name */
    public static final AtomicLong f7994d = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    public final String f7995a;

    /* renamed from: b  reason: collision with root package name */
    public final String f7996b;

    /* renamed from: c  reason: collision with root package name */
    public final long f7997c;

    public J(String str, String str2, long j5) {
        Z2.l.j(str, "typeName");
        Z2.l.f(!str.isEmpty(), "empty type");
        this.f7995a = str;
        this.f7996b = str2;
        this.f7997c = j5;
    }

    public static J a(Class cls, String str) {
        String simpleName = cls.getSimpleName();
        if (simpleName.isEmpty()) {
            simpleName = cls.getName().substring(cls.getPackage().getName().length() + 1);
        }
        return new J(simpleName, str, f7994d.incrementAndGet());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f7995a + "<" + this.f7997c + ">");
        String str = this.f7996b;
        if (str != null) {
            sb.append(": (");
            sb.append(str);
            sb.append(')');
        }
        return sb.toString();
    }
}
