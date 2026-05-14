package S1;

import android.os.Process;
/* loaded from: classes.dex */
public final class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f2576a;

    /* renamed from: b  reason: collision with root package name */
    public final Runnable f2577b;

    public /* synthetic */ p(Runnable runnable, int i) {
        this.f2576a = i;
        this.f2577b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2576a) {
            case 0:
                try {
                    this.f2577b.run();
                    return;
                } catch (Exception e5) {
                    android.support.v4.media.session.a.i(e5, "Executor", "Background execution failure.");
                    return;
                }
            default:
                Process.setThreadPriority(10);
                this.f2577b.run();
                return;
        }
    }
}
