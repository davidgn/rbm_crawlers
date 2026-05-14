package z2;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: z2.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1011a implements InterfaceC1013c {

    /* renamed from: a  reason: collision with root package name */
    public final float f11639a;

    public C1011a(float f5) {
        this.f11639a = f5;
    }

    @Override // z2.InterfaceC1013c
    public final float a(RectF rectF) {
        return this.f11639a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C1011a) && this.f11639a == ((C1011a) obj).f11639a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f11639a)});
    }
}
