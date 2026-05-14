package l3;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: l3.k1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0683k1 implements InterfaceC0714w0 {

    /* renamed from: b  reason: collision with root package name */
    public static final Logger f9244b = Logger.getLogger(C0683k1.class.getName());

    /* renamed from: c  reason: collision with root package name */
    public static final Constructor f9245c;

    /* renamed from: d  reason: collision with root package name */
    public static final Method f9246d;

    /* renamed from: e  reason: collision with root package name */
    public static final RuntimeException f9247e;

    /* renamed from: f  reason: collision with root package name */
    public static final Object[] f9248f;

    /* renamed from: a  reason: collision with root package name */
    public final Object f9249a;

    static {
        Method method;
        Constructor<?> constructor;
        try {
            Class<?> cls = Class.forName("java.util.concurrent.atomic.LongAdder");
            method = cls.getMethod("add", Long.TYPE);
            try {
                cls.getMethod("sum", null);
                Constructor<?>[] constructors = cls.getConstructors();
                int length = constructors.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        constructor = null;
                        break;
                    }
                    constructor = constructors[i];
                    if (constructor.getParameterTypes().length == 0) {
                        break;
                    }
                    i++;
                }
                th = null;
            } catch (Throwable th) {
                th = th;
                f9244b.log(Level.FINE, "LongAdder can not be found via reflection, this is normal for JDK7 and below", th);
                constructor = null;
                if (th == null) {
                }
                f9245c = null;
                f9246d = null;
                f9247e = new RuntimeException(th);
                f9248f = new Object[]{1L};
            }
        } catch (Throwable th2) {
            th = th2;
            method = null;
        }
        if (th == null || constructor == null) {
            f9245c = null;
            f9246d = null;
            f9247e = new RuntimeException(th);
        } else {
            f9245c = constructor;
            f9246d = method;
            f9247e = null;
        }
        f9248f = new Object[]{1L};
    }

    public C0683k1() {
        RuntimeException runtimeException = f9247e;
        if (runtimeException != null) {
            throw runtimeException;
        }
        try {
            this.f9249a = f9245c.newInstance(null);
        } catch (IllegalAccessException e5) {
            throw new RuntimeException(e5);
        } catch (InstantiationException e6) {
            throw new RuntimeException(e6);
        } catch (InvocationTargetException e7) {
            throw new RuntimeException(e7);
        }
    }

    @Override // l3.InterfaceC0714w0
    public final void a() {
        try {
            f9246d.invoke(this.f9249a, f9248f);
        } catch (IllegalAccessException e5) {
            throw new RuntimeException(e5);
        } catch (InvocationTargetException e6) {
            throw new RuntimeException(e6);
        }
    }
}
