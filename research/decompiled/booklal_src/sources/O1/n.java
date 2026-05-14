package O1;

import android.graphics.drawable.Drawable;
import java.util.Collection;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public final Collection f2174a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2175b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2176c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2177d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2178e;

    /* renamed from: f  reason: collision with root package name */
    public final Drawable f2179f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2180g;

    /* renamed from: h  reason: collision with root package name */
    public final int f2181h;
    public final float i;

    public n(Collection collection, int i, int i4, int i5, int i6, Drawable drawable, int i7, int i8, float f5) {
        this.f2174a = collection;
        this.f2175b = i;
        this.f2176c = i4;
        this.f2177d = i5;
        this.f2178e = i6;
        this.f2179f = drawable;
        this.f2180g = i7;
        this.f2181h = i8;
        this.i = f5;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof n) {
                n nVar = (n) obj;
                if (this.f2174a.equals(nVar.f2174a) && this.f2175b == nVar.f2175b && this.f2176c == nVar.f2176c && this.f2177d == nVar.f2177d) {
                    Object obj2 = b.f2138a;
                    if (obj2.equals(obj2) && this.f2178e == nVar.f2178e) {
                        Object obj3 = a.f2137a;
                        return obj3.equals(obj3) && this.f2179f.equals(nVar.f2179f) && this.f2180g == nVar.f2180g && this.f2181h == nVar.f2181h && Float.compare(this.i, nVar.i) == 0;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode = b.f2138a.hashCode();
        int hashCode2 = a.f2137a.hashCode();
        int hashCode3 = this.f2179f.hashCode();
        return Float.floatToIntBits(this.i) + ((((((((hashCode3 + ((hashCode2 + ((((((((((hashCode + (((((((this.f2174a.hashCode() * 31) + this.f2175b) * 31) + this.f2176c) * 31) + this.f2177d) * 31)) * 31) + this.f2178e) * 31) + 90) * 31) - 1) * 31) + 230) * 31)) * 31)) * 31) - 1) * 31) + this.f2180g) * 31) + this.f2181h) * 31);
    }

    public final String toString() {
        return "ReactionsConfig(reactions=" + this.f2174a + ", reactionSize=" + this.f2175b + ", horizontalMargin=" + this.f2176c + ", verticalMargin=" + this.f2177d + ", popupGravity=" + b.f2138a + ", popupMargin=" + this.f2178e + ", popupCornerRadius=90, popupColor=-1, popupAlphaValue=230, reactionTextProvider=" + a.f2137a + ", textBackground=" + this.f2179f + ", textColor=-1, textHorizontalPadding=" + this.f2180g + ", textVerticalPadding=" + this.f2181h + ", textSize=" + this.i + ")";
    }
}
