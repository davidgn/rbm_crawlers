package n;

import java.util.HashMap;
/* renamed from: n.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0744a extends C0749f {

    /* renamed from: e  reason: collision with root package name */
    public final HashMap f9567e = new HashMap();

    @Override // n.C0749f
    public final C0746c a(Object obj) {
        return (C0746c) this.f9567e.get(obj);
    }

    @Override // n.C0749f
    public final Object d(Object obj) {
        Object d2 = super.d(obj);
        this.f9567e.remove(obj);
        return d2;
    }
}
