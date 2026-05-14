package t4;

import java.util.concurrent.ScheduledFuture;
/* loaded from: classes2.dex */
public final class F implements G {

    /* renamed from: a  reason: collision with root package name */
    public final ScheduledFuture f10442a;

    public F(ScheduledFuture scheduledFuture) {
        this.f10442a = scheduledFuture;
    }

    @Override // t4.G
    public final void b() {
        this.f10442a.cancel(false);
    }

    public final String toString() {
        return "DisposableFutureHandle[" + this.f10442a + ']';
    }
}
