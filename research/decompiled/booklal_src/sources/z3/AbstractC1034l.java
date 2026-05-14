package z3;
/* renamed from: z3.l  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1034l {
    public final void b(InterfaceC1035m interfaceC1035m) {
        try {
            c(interfaceC1035m);
        } catch (NullPointerException e5) {
            throw e5;
        } catch (Throwable th) {
            S4.b.D(th);
            L4.l.y(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void c(InterfaceC1035m interfaceC1035m);
}
