package com.google.firebase.firestore.util;

import java.util.Locale;
/* loaded from: classes2.dex */
public class Preconditions {
    public static void checkArgument(boolean z4, String str, Object... objArr) {
        if (!z4) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static <T> T checkNotNull(T t2) {
        t2.getClass();
        return t2;
    }

    public static void checkState(boolean z4) {
        if (!z4) {
            throw new IllegalStateException();
        }
    }

    public static <T> T checkNotNull(T t2, Object obj) {
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void checkState(boolean z4, String str) {
        if (!z4) {
            throw new IllegalStateException(str);
        }
    }

    public static <T> T checkNotNull(T t2, String str, Object... objArr) {
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException(String.format(Locale.US, str, objArr));
    }
}
