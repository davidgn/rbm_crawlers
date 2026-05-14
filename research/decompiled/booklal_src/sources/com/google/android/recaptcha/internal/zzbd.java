package com.google.android.recaptcha.internal;

import Y3.j;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import kotlin.jvm.internal.i;
/* loaded from: classes2.dex */
public abstract class zzbd implements InvocationHandler {
    private final Object zza;

    public zzbd(Object obj) {
        this.zza = obj;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        Object obj2;
        if (i.a(method.getName(), "toString") && method.getParameterTypes().length == 0) {
            return "Proxy@".concat(String.valueOf(Integer.toHexString(obj.hashCode())));
        }
        if (i.a(method.getName(), "hashCode") && method.getParameterTypes().length == 0) {
            return Integer.valueOf(System.identityHashCode(obj));
        }
        if (i.a(method.getName(), "equals") && method.getParameterTypes().length != 0) {
            boolean z4 = false;
            if (objArr != null && objArr.length != 0 && objArr[0].hashCode() == obj.hashCode()) {
                z4 = true;
            }
            return Boolean.valueOf(z4);
        }
        boolean zza = zza(obj, method, objArr);
        j jVar = j.f3433a;
        if (zza) {
            if ((this.zza == null && i.a(method.getReturnType(), Void.TYPE)) || ((obj2 = this.zza) != null && i.a(zzeg.zza(obj2.getClass()), zzeg.zza(method.getReturnType())))) {
                Object obj3 = this.zza;
                return obj3 == null ? jVar : obj3;
            }
            Object obj4 = this.zza;
            Class<?> returnType = method.getReturnType();
            throw new IllegalArgumentException(obj4 + " cannot be returned from method with return type " + returnType);
        }
        return jVar;
    }

    public abstract boolean zza(Object obj, Method method, Object[] objArr);
}
