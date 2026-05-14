package z3;
/* renamed from: z3.h  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1030h implements InterfaceC1033k {
    public static L3.o a(Object obj) {
        G3.d.a(obj, "item is null");
        return new L3.o(obj);
    }

    public final void b(InterfaceC1032j interfaceC1032j) {
        G3.d.a(interfaceC1032j, "observer is null");
        try {
            c(interfaceC1032j);
        } catch (NullPointerException e5) {
            throw e5;
        } catch (Throwable th) {
            S4.b.D(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void c(InterfaceC1032j interfaceC1032j);
}
