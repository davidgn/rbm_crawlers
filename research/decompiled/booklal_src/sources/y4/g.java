package y4;

import b4.InterfaceC0294h;
/* loaded from: classes2.dex */
public final class g extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    public final transient InterfaceC0294h f11578a;

    public g(InterfaceC0294h interfaceC0294h) {
        this.f11578a = interfaceC0294h;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return this.f11578a.toString();
    }
}
