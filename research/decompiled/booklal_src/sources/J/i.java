package J;

import android.os.Process;
/* loaded from: classes.dex */
public final class i extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public final int f1169a;

    public i(Runnable runnable) {
        super(runnable, "fonts-androidx");
        this.f1169a = 10;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f1169a);
        super.run();
    }
}
