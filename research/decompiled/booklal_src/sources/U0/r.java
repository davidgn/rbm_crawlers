package U0;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes.dex */
public final class r implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public int f2733a;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
        newThread.setName("WorkManager-WorkTimer-thread-" + this.f2733a);
        this.f2733a = this.f2733a + 1;
        return newThread;
    }
}
