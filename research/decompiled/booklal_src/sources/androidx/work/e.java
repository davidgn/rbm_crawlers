package androidx.work;

import java.util.HashSet;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final HashSet f4726a = new HashSet();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        return this.f4726a.equals(((e) obj).f4726a);
    }

    public final int hashCode() {
        return this.f4726a.hashCode();
    }
}
