package f4;

import java.lang.reflect.Method;
import kotlin.jvm.internal.i;
/* renamed from: f4.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0417a {

    /* renamed from: a  reason: collision with root package name */
    public static final Method f7334a;

    static {
        Method method;
        Method[] throwableMethods = Throwable.class.getMethods();
        i.e(throwableMethods, "throwableMethods");
        int length = throwableMethods.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Method method2 = throwableMethods[i];
            if (i.a(method2.getName(), "addSuppressed")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                i.e(parameterTypes, "it.parameterTypes");
                if (i.a(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class)) {
                    method = method2;
                    break;
                }
            }
            i++;
        }
        f7334a = method;
        int length2 = throwableMethods.length;
        for (int i4 = 0; i4 < length2 && !i.a(throwableMethods[i4].getName(), "getSuppressed"); i4++) {
        }
    }
}
