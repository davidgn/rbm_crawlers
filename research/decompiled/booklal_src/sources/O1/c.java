package O1;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final Drawable f2140a;

    /* renamed from: b  reason: collision with root package name */
    public final ImageView.ScaleType f2141b;

    public c(Drawable drawable, ImageView.ScaleType scaleType) {
        this.f2140a = drawable;
        this.f2141b = scaleType;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                return kotlin.jvm.internal.i.a(this.f2140a, cVar.f2140a) && kotlin.jvm.internal.i.a(this.f2141b, cVar.f2141b);
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Drawable drawable = this.f2140a;
        int hashCode = (drawable != null ? drawable.hashCode() : 0) * 31;
        ImageView.ScaleType scaleType = this.f2141b;
        return hashCode + (scaleType != null ? scaleType.hashCode() : 0);
    }

    public final String toString() {
        return "Reaction(image=" + this.f2140a + ", scaleType=" + this.f2141b + ")";
    }
}
