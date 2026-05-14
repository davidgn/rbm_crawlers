package F0;

import android.view.ViewGroup;
import android.view.WindowId;
/* loaded from: classes.dex */
public final class G {

    /* renamed from: a  reason: collision with root package name */
    public final WindowId f830a;

    public G(ViewGroup viewGroup) {
        this.f830a = viewGroup.getWindowId();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof G) && ((G) obj).f830a.equals(this.f830a);
    }

    public final int hashCode() {
        return this.f830a.hashCode();
    }
}
