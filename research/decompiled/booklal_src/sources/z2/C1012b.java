package z2;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: z2.b  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1012b implements InterfaceC1013c {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1013c f11640a;

    /* renamed from: b  reason: collision with root package name */
    public final float f11641b;

    public C1012b(float f5, InterfaceC1013c interfaceC1013c) {
        while (interfaceC1013c instanceof C1012b) {
            interfaceC1013c = ((C1012b) interfaceC1013c).f11640a;
            f5 += ((C1012b) interfaceC1013c).f11641b;
        }
        this.f11640a = interfaceC1013c;
        this.f11641b = f5;
    }

    @Override // z2.InterfaceC1013c
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.f11640a.a(rectF) + this.f11641b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1012b) {
            C1012b c1012b = (C1012b) obj;
            return this.f11640a.equals(c1012b.f11640a) && this.f11641b == c1012b.f11641b;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11640a, Float.valueOf(this.f11641b)});
    }
}
