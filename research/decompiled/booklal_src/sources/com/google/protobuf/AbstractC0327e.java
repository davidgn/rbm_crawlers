package com.google.protobuf;
/* renamed from: com.google.protobuf.e  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0327e {

    /* renamed from: a  reason: collision with root package name */
    public static final Class f6702a;

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f6703b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f6702a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f6703b = cls2 != null;
    }

    public static boolean a() {
        return (f6702a == null || f6703b) ? false : true;
    }
}
