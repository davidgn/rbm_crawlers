package D2;

import android.app.PendingIntent;
/* loaded from: classes2.dex */
public final class c extends b {

    /* renamed from: a  reason: collision with root package name */
    public final PendingIntent f675a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f676b;

    public c(PendingIntent pendingIntent, boolean z4) {
        if (pendingIntent == null) {
            throw new NullPointerException("Null pendingIntent");
        }
        this.f675a = pendingIntent;
        this.f676b = z4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.f675a.equals(((c) bVar).f675a) && this.f676b == ((c) bVar).f676b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f675a.hashCode() ^ 1000003) * 1000003) ^ (true != this.f676b ? 1237 : 1231);
    }

    public final String toString() {
        String obj = this.f675a.toString();
        return "ReviewInfo{pendingIntent=" + obj + ", isNoOp=" + this.f676b + "}";
    }
}
