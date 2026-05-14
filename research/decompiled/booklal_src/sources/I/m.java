package I;

import java.util.Locale;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: b  reason: collision with root package name */
    public static final m f1102b = new m(new n(l.a(new Locale[0])));

    /* renamed from: a  reason: collision with root package name */
    public final n f1103a;

    public m(n nVar) {
        this.f1103a = nVar;
    }

    public static m a(String str) {
        if (str == null || str.isEmpty()) {
            return f1102b;
        }
        String[] split = str.split(",", -1);
        int length = split.length;
        Locale[] localeArr = new Locale[length];
        for (int i = 0; i < length; i++) {
            localeArr[i] = k.a(split[i]);
        }
        return new m(new n(l.a(localeArr)));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof m) {
            if (this.f1103a.equals(((m) obj).f1103a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f1103a.f1104a.hashCode();
    }

    public final String toString() {
        return this.f1103a.f1104a.toString();
    }
}
