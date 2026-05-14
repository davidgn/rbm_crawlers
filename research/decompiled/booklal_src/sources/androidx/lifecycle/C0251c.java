package androidx.lifecycle;

import java.lang.reflect.Method;
/* renamed from: androidx.lifecycle.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0251c {

    /* renamed from: a  reason: collision with root package name */
    public final int f4446a;

    /* renamed from: b  reason: collision with root package name */
    public final Method f4447b;

    public C0251c(int i, Method method) {
        this.f4446a = i;
        this.f4447b = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0251c) {
            C0251c c0251c = (C0251c) obj;
            return this.f4446a == c0251c.f4446a && this.f4447b.getName().equals(c0251c.f4447b.getName());
        }
        return false;
    }

    public final int hashCode() {
        return this.f4447b.getName().hashCode() + (this.f4446a * 31);
    }
}
