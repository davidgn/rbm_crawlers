package l3;

import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: l3.v0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC0712v0 implements Runnable {

    /* renamed from: b  reason: collision with root package name */
    public static final Logger f9344b = Logger.getLogger(RunnableC0712v0.class.getName());

    /* renamed from: a  reason: collision with root package name */
    public final Runnable f9345a;

    public RunnableC0712v0(Runnable runnable) {
        this.f9345a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = this.f9345a;
        try {
            runnable.run();
        } catch (Throwable th) {
            Level level = Level.SEVERE;
            f9344b.log(level, "Exception while executing runnable " + runnable, th);
            J2.l.a(th);
            throw new AssertionError(th);
        }
    }

    public final String toString() {
        return "LogExceptionRunnable(" + this.f9345a + ")";
    }
}
