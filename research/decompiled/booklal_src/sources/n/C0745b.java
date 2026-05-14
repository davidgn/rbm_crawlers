package n;

import java.util.Iterator;
/* renamed from: n.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0745b extends AbstractC0748e implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    public C0746c f9568a;

    /* renamed from: b  reason: collision with root package name */
    public C0746c f9569b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f9570c;

    public C0745b(C0746c c0746c, C0746c c0746c2, int i) {
        this.f9570c = i;
        this.f9568a = c0746c2;
        this.f9569b = c0746c;
    }

    @Override // n.AbstractC0748e
    public final void a(C0746c c0746c) {
        C0746c c0746c2;
        C0746c c0746c3 = null;
        if (this.f9568a == c0746c && c0746c == this.f9569b) {
            this.f9569b = null;
            this.f9568a = null;
        }
        C0746c c0746c4 = this.f9568a;
        if (c0746c4 == c0746c) {
            switch (this.f9570c) {
                case 0:
                    c0746c2 = c0746c4.f9574d;
                    break;
                default:
                    c0746c2 = c0746c4.f9573c;
                    break;
            }
            this.f9568a = c0746c2;
        }
        C0746c c0746c5 = this.f9569b;
        if (c0746c5 == c0746c) {
            C0746c c0746c6 = this.f9568a;
            if (c0746c5 != c0746c6 && c0746c6 != null) {
                c0746c3 = b(c0746c5);
            }
            this.f9569b = c0746c3;
        }
    }

    public final C0746c b(C0746c c0746c) {
        switch (this.f9570c) {
            case 0:
                return c0746c.f9573c;
            default:
                return c0746c.f9574d;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f9569b != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        C0746c c0746c = this.f9569b;
        C0746c c0746c2 = this.f9568a;
        this.f9569b = (c0746c == c0746c2 || c0746c2 == null) ? null : b(c0746c);
        return c0746c;
    }
}
