package M;

import android.view.DisplayCutout;
import java.util.Objects;
/* renamed from: M.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0080j {

    /* renamed from: a  reason: collision with root package name */
    public final DisplayCutout f1845a;

    public C0080j(DisplayCutout displayCutout) {
        this.f1845a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0080j.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f1845a, ((C0080j) obj).f1845a);
    }

    public final int hashCode() {
        int hashCode;
        hashCode = this.f1845a.hashCode();
        return hashCode;
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f1845a + "}";
    }
}
