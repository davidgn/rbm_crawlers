package h1;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes.dex */
public final class b implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final String f7607a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f7608b;

    /* renamed from: c  reason: collision with root package name */
    public int f7609c;

    public b(String str, boolean z4) {
        this.f7607a = str;
        this.f7608b = z4;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final synchronized Thread newThread(Runnable runnable) {
        C0445a c0445a;
        c0445a = new C0445a(this, runnable, "glide-" + this.f7607a + "-thread-" + this.f7609c);
        this.f7609c = this.f7609c + 1;
        return c0445a;
    }
}
