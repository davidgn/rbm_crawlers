package androidx.work;

import android.net.Uri;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f4724a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f4725b;

    public d(Uri uri, boolean z4) {
        this.f4724a = uri;
        this.f4725b = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f4725b == dVar.f4725b && this.f4724a.equals(dVar.f4724a);
    }

    public final int hashCode() {
        return (this.f4724a.hashCode() * 31) + (this.f4725b ? 1 : 0);
    }
}
