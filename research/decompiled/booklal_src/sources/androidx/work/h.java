package androidx.work;

import android.app.Notification;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final int f4731a;

    /* renamed from: b  reason: collision with root package name */
    public final int f4732b;

    /* renamed from: c  reason: collision with root package name */
    public final Notification f4733c;

    public h(int i, Notification notification, int i4) {
        this.f4731a = i;
        this.f4733c = notification;
        this.f4732b = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f4731a == hVar.f4731a && this.f4732b == hVar.f4732b) {
            return this.f4733c.equals(hVar.f4733c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4733c.hashCode() + (((this.f4731a * 31) + this.f4732b) * 31);
    }

    public final String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f4731a + ", mForegroundServiceType=" + this.f4732b + ", mNotification=" + this.f4733c + '}';
    }
}
