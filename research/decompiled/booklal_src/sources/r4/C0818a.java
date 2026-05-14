package r4;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: r4.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0818a implements d {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicReference f10010a;

    public C0818a(d dVar) {
        this.f10010a = new AtomicReference(dVar);
    }

    @Override // r4.d
    public final Iterator iterator() {
        d dVar = (d) this.f10010a.getAndSet(null);
        if (dVar != null) {
            return dVar.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
