package z3;

import java.util.concurrent.TimeUnit;
/* renamed from: z3.p  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1038p {
    static {
        TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15L).longValue());
    }

    public abstract AbstractC1037o a();

    public B3.b b(Runnable runnable) {
        return c(runnable, TimeUnit.NANOSECONDS);
    }

    public B3.b c(Runnable runnable, TimeUnit timeUnit) {
        AbstractC1037o a5 = a();
        RunnableC1036n runnableC1036n = new RunnableC1036n(runnable, a5);
        a5.a(runnableC1036n, timeUnit);
        return runnableC1036n;
    }
}
