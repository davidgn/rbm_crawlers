package com.google.protobuf;

import java.util.Collections;
/* renamed from: com.google.protobuf.y  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0366y {

    /* renamed from: a  reason: collision with root package name */
    public static volatile C0366y f6823a;

    /* renamed from: b  reason: collision with root package name */
    public static final C0366y f6824b;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.protobuf.y, java.lang.Object] */
    static {
        ?? obj = new Object();
        Collections.emptyMap();
        f6824b = obj;
    }

    public static C0366y a() {
        C0366y c0366y = f6823a;
        if (c0366y == null) {
            synchronized (C0366y.class) {
                try {
                    c0366y = f6823a;
                    if (c0366y == null) {
                        Class cls = AbstractC0364x.f6819a;
                        C0366y c0366y2 = null;
                        if (cls != null) {
                            try {
                                c0366y2 = (C0366y) cls.getDeclaredMethod("getEmptyRegistry", null).invoke(null, null);
                            } catch (Exception unused) {
                            }
                        }
                        if (c0366y2 == null) {
                            c0366y2 = f6824b;
                        }
                        f6823a = c0366y2;
                        c0366y = c0366y2;
                    }
                } finally {
                }
            }
        }
        return c0366y;
    }
}
