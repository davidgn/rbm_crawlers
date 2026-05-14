package L4;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public final class i implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f1770a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1771b;

    /* renamed from: c  reason: collision with root package name */
    public String f1772c;

    public i(ArrayList arrayList) {
        this.f1770a = arrayList;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object proxy, Method method, Object[] objArr) {
        kotlin.jvm.internal.i.f(proxy, "proxy");
        kotlin.jvm.internal.i.f(method, "method");
        if (objArr == null) {
            objArr = new Object[0];
        }
        String name = method.getName();
        Class<?> returnType = method.getReturnType();
        if (kotlin.jvm.internal.i.a(name, "supports") && kotlin.jvm.internal.i.a(Boolean.TYPE, returnType)) {
            return Boolean.TRUE;
        }
        if (kotlin.jvm.internal.i.a(name, "unsupported") && kotlin.jvm.internal.i.a(Void.TYPE, returnType)) {
            this.f1771b = true;
            return null;
        }
        boolean a5 = kotlin.jvm.internal.i.a(name, "protocols");
        ArrayList arrayList = this.f1770a;
        if (a5 && objArr.length == 0) {
            return arrayList;
        }
        if ((kotlin.jvm.internal.i.a(name, "selectProtocol") || kotlin.jvm.internal.i.a(name, "select")) && String.class.equals(returnType) && objArr.length == 1) {
            Object obj = objArr[0];
            if (obj instanceof List) {
                kotlin.jvm.internal.i.d(obj, "null cannot be cast to non-null type kotlin.collections.List<*>");
                List list = (List) obj;
                int size = list.size();
                if (size >= 0) {
                    int i = 0;
                    while (true) {
                        Object obj2 = list.get(i);
                        kotlin.jvm.internal.i.d(obj2, "null cannot be cast to non-null type kotlin.String");
                        String str = (String) obj2;
                        if (!arrayList.contains(str)) {
                            if (i == size) {
                                break;
                            }
                            i++;
                        } else {
                            this.f1772c = str;
                            return str;
                        }
                    }
                }
                String str2 = (String) arrayList.get(0);
                this.f1772c = str2;
                return str2;
            }
        }
        if ((kotlin.jvm.internal.i.a(name, "protocolSelected") || kotlin.jvm.internal.i.a(name, "selected")) && objArr.length == 1) {
            Object obj3 = objArr[0];
            kotlin.jvm.internal.i.d(obj3, "null cannot be cast to non-null type kotlin.String");
            this.f1772c = (String) obj3;
            return null;
        }
        return method.invoke(this, Arrays.copyOf(objArr, objArr.length));
    }
}
