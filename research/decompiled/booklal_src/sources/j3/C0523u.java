package j3;

import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: j3.u  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0523u {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f8134a = Logger.getLogger(C0523u.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public static final C0523u f8135b = new Object();

    public static C0523u b() {
        ((x0) AbstractC0521s.f8128a).getClass();
        C0523u c0523u = (C0523u) x0.f8160b.get();
        C0523u c0523u2 = f8135b;
        if (c0523u == null) {
            c0523u = c0523u2;
        }
        return c0523u == null ? c0523u2 : c0523u;
    }

    public final C0523u a() {
        ((x0) AbstractC0521s.f8128a).getClass();
        ThreadLocal threadLocal = x0.f8160b;
        C0523u c0523u = (C0523u) threadLocal.get();
        C0523u c0523u2 = f8135b;
        if (c0523u == null) {
            c0523u = c0523u2;
        }
        threadLocal.set(this);
        return c0523u == null ? c0523u2 : c0523u;
    }

    public final void c(C0523u c0523u) {
        if (c0523u == null) {
            throw new NullPointerException("toAttach");
        }
        ((x0) AbstractC0521s.f8128a).getClass();
        ThreadLocal threadLocal = x0.f8160b;
        C0523u c0523u2 = (C0523u) threadLocal.get();
        C0523u c0523u3 = f8135b;
        if (c0523u2 == null) {
            c0523u2 = c0523u3;
        }
        if (c0523u2 != this) {
            x0.f8159a.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        if (c0523u != c0523u3) {
            threadLocal.set(c0523u);
        } else {
            threadLocal.set(null);
        }
    }
}
