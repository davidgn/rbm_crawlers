package com.google.firebase.platforminfo;

import Y3.c;
/* loaded from: classes2.dex */
public final class KotlinDetector {
    private KotlinDetector() {
    }

    public static String detectVersion() {
        try {
            c.f3423b.getClass();
            return "1.8.10";
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }
}
