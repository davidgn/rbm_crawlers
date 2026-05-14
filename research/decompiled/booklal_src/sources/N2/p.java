package N2;

import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public final class p implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ThreadFactory f2122a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f2123b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AtomicLong f2124c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Boolean f2125d;

    public p(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool) {
        this.f2122a = threadFactory;
        this.f2123b = str;
        this.f2124c = atomicLong;
        this.f2125d = bool;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f2122a.newThread(runnable);
        String str = this.f2123b;
        if (str != null) {
            AtomicLong atomicLong = this.f2124c;
            Objects.requireNonNull(atomicLong);
            newThread.setName(String.format(Locale.ROOT, str, Long.valueOf(atomicLong.getAndIncrement())));
        }
        Boolean bool = this.f2125d;
        if (bool != null) {
            newThread.setDaemon(bool.booleanValue());
        }
        return newThread;
    }
}
