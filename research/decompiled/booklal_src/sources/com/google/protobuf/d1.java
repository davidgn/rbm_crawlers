package com.google.protobuf;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
public abstract class d1 {

    /* renamed from: a  reason: collision with root package name */
    public final Unsafe f6701a;

    public d1(Unsafe unsafe) {
        this.f6701a = unsafe;
    }

    public final int a(Class cls) {
        return this.f6701a.arrayBaseOffset(cls);
    }

    public final int b(Class cls) {
        return this.f6701a.arrayIndexScale(cls);
    }

    public abstract void c(long j5, long j6, long j7, byte[] bArr);

    public abstract boolean d(long j5, Object obj);

    public abstract byte e(long j5);

    public abstract byte f(long j5, Object obj);

    public abstract double g(long j5, Object obj);

    public abstract float h(long j5, Object obj);

    public final int i(long j5, Object obj) {
        return this.f6701a.getInt(obj, j5);
    }

    public final long j(long j5, Object obj) {
        return this.f6701a.getLong(obj, j5);
    }

    public final Object k(long j5, Object obj) {
        return this.f6701a.getObject(obj, j5);
    }

    public final long l(Field field) {
        return this.f6701a.objectFieldOffset(field);
    }

    public abstract void m(Object obj, long j5, boolean z4);

    public abstract void n(Object obj, long j5, byte b5);

    public abstract void o(Object obj, long j5, double d2);

    public abstract void p(Object obj, long j5, float f5);

    public final void q(Object obj, long j5, int i) {
        this.f6701a.putInt(obj, j5, i);
    }

    public final void r(Object obj, long j5, long j6) {
        this.f6701a.putLong(obj, j5, j6);
    }

    public final void s(Object obj, long j5, Object obj2) {
        this.f6701a.putObject(obj, j5, obj2);
    }

    public boolean t() {
        Unsafe unsafe = this.f6701a;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            Class cls2 = Long.TYPE;
            cls.getMethod("getInt", Object.class, cls2);
            cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
            cls.getMethod("getLong", Object.class, cls2);
            cls.getMethod("putLong", Object.class, cls2, cls2);
            cls.getMethod("getObject", Object.class, cls2);
            cls.getMethod("putObject", Object.class, cls2, Object.class);
            return true;
        } catch (Throwable th) {
            e1.a(th);
            return false;
        }
    }

    public abstract boolean u();
}
