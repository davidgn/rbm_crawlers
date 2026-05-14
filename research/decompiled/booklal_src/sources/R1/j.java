package R1;

import java.util.ArrayList;
/* loaded from: classes.dex */
public final class j extends q {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f2450a;

    public j(ArrayList arrayList) {
        this.f2450a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof q) {
            return this.f2450a.equals(((j) ((q) obj)).f2450a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2450a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BatchedLogRequest{logRequests=" + this.f2450a + "}";
    }
}
