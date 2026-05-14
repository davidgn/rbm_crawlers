package com.google.android.gms.internal.ads;

import sun.misc.Unsafe;
/* loaded from: classes.dex */
public abstract /* synthetic */ class c {
    public static /* synthetic */ boolean a(Unsafe unsafe, Object obj, long j5, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j5, obj2, obj3)) {
            if (unsafe.getObject(obj, j5) != obj2) {
                return false;
            }
        }
        return true;
    }
}
