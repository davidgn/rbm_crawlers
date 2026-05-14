package r4;

import M.f0;
import java.util.Iterator;
/* renamed from: r4.b  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0819b implements d {

    /* renamed from: a  reason: collision with root package name */
    public final d f10011a;

    /* renamed from: b  reason: collision with root package name */
    public final int f10012b;

    public C0819b(d dVar, int i) {
        this.f10011a = dVar;
        this.f10012b = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i + '.').toString());
    }

    @Override // r4.d
    public final Iterator iterator() {
        return new f0(this);
    }
}
