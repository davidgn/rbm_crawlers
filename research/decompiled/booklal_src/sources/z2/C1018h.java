package z2;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: z2.h  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1018h implements InterfaceC1013c {

    /* renamed from: a  reason: collision with root package name */
    public final float f11679a;

    public C1018h(float f5) {
        this.f11679a = f5;
    }

    @Override // z2.InterfaceC1013c
    public final float a(RectF rectF) {
        return rectF.height() * this.f11679a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C1018h) && this.f11679a == ((C1018h) obj).f11679a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f11679a)});
    }
}
