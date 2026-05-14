package y4;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f11593a = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_cur$volatile");
    private volatile /* synthetic */ Object _cur$volatile = new n(8, false);

    public final boolean a(Runnable runnable) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f11593a;
            n nVar = (n) atomicReferenceFieldUpdater.get(this);
            int a5 = nVar.a(runnable);
            if (a5 == 0) {
                return true;
            }
            if (a5 == 1) {
                n c5 = nVar.c();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, nVar, c5) && atomicReferenceFieldUpdater.get(this) == nVar) {
                }
            } else if (a5 == 2) {
                return false;
            }
        }
    }

    public final void b() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f11593a;
            n nVar = (n) atomicReferenceFieldUpdater.get(this);
            if (nVar.b()) {
                return;
            }
            n c5 = nVar.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, nVar, c5) && atomicReferenceFieldUpdater.get(this) == nVar) {
            }
        }
    }

    public final int c() {
        n nVar = (n) f11593a.get(this);
        nVar.getClass();
        long j5 = n.f11596f.get(nVar);
        return (((int) ((j5 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j5))) & 1073741823;
    }

    public final Object d() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f11593a;
            n nVar = (n) atomicReferenceFieldUpdater.get(this);
            Object d2 = nVar.d();
            if (d2 != n.f11597g) {
                return d2;
            }
            n c5 = nVar.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, nVar, c5) && atomicReferenceFieldUpdater.get(this) == nVar) {
            }
        }
    }
}
