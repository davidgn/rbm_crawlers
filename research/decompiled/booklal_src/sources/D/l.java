package D;

import android.content.res.Resources;
import java.util.Objects;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final Resources f610a;

    /* renamed from: b  reason: collision with root package name */
    public final Resources.Theme f611b;

    public l(Resources resources, Resources.Theme theme) {
        this.f610a = resources;
        this.f611b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.f610a.equals(lVar.f610a) && Objects.equals(this.f611b, lVar.f611b);
    }

    public final int hashCode() {
        return Objects.hash(this.f610a, this.f611b);
    }
}
