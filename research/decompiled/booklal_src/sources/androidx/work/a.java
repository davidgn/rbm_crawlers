package androidx.work;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import s.AbstractC0824e;
/* loaded from: classes.dex */
public final class a implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicInteger f4706a = new AtomicInteger(0);

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f4707b;

    public a(boolean z4) {
        this.f4707b = z4;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        StringBuilder b5 = AbstractC0824e.b(this.f4707b ? "WM.task-" : "androidx.work-");
        b5.append(this.f4706a.incrementAndGet());
        return new Thread(runnable, b5.toString());
    }
}
