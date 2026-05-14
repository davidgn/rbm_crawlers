package com.google.firebase.firestore.util;
/* loaded from: classes2.dex */
public class Assert {
    public static AssertionError fail(String str, Object... objArr) {
        throw new AssertionError(format(str, objArr));
    }

    private static String format(String str, Object... objArr) {
        return "INTERNAL ASSERTION FAILED: ".concat(String.format(str, objArr));
    }

    public static void hardAssert(boolean z4, String str, Object... objArr) {
        if (!z4) {
            throw fail(str, objArr);
        }
    }

    public static <T> T hardAssertNonNull(T t2, String str, Object... objArr) {
        if (t2 != null) {
            return t2;
        }
        throw fail(str, objArr);
    }

    public static AssertionError fail(Throwable th, String str, Object... objArr) {
        throw ApiUtil.newAssertionError(format(str, objArr), th);
    }
}
