package S3;

import java.io.Serializable;
/* loaded from: classes2.dex */
public final class e implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f2595a;

    public e(Throwable th) {
        this.f2595a = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            Throwable th = ((e) obj).f2595a;
            Throwable th2 = this.f2595a;
            return th2 == th || (th2 != null && th2.equals(th));
        }
        return false;
    }

    public final int hashCode() {
        return this.f2595a.hashCode();
    }

    public final String toString() {
        return "NotificationLite.Error[" + this.f2595a + "]";
    }
}
