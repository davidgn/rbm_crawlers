package com.google.protobuf;

import java.util.Map;
/* renamed from: com.google.protobuf.p0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0350p0 {
    public static C0344m0 a(Object obj) {
        return ((C0346n0) obj).f6752a;
    }

    public static C0348o0 b(Object obj) {
        return (C0348o0) obj;
    }

    public static int c(int i, Object obj, Object obj2) {
        C0348o0 c0348o0 = (C0348o0) obj;
        C0346n0 c0346n0 = (C0346n0) obj2;
        int i4 = 0;
        if (!c0348o0.isEmpty()) {
            for (Map.Entry entry : c0348o0.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                c0346n0.getClass();
                int r02 = AbstractC0358u.r0(i);
                int a5 = C0346n0.a(c0346n0.f6752a, key, value);
                i4 = com.google.android.gms.ads.internal.util.client.a.C(a5, a5, r02, i4);
            }
        }
        return i4;
    }

    public static boolean d(Object obj) {
        return !((C0348o0) obj).f6773a;
    }

    public static C0348o0 e(Object obj, Object obj2) {
        C0348o0 c0348o0 = (C0348o0) obj;
        C0348o0 c0348o02 = (C0348o0) obj2;
        if (!c0348o02.isEmpty()) {
            if (!c0348o0.f6773a) {
                c0348o0 = c0348o0.c();
            }
            c0348o0.b();
            if (!c0348o02.isEmpty()) {
                c0348o0.putAll(c0348o02);
            }
        }
        return c0348o0;
    }

    public static C0348o0 f() {
        return C0348o0.f6772b.c();
    }

    public static void g(Object obj) {
        ((C0348o0) obj).f6773a = false;
    }
}
