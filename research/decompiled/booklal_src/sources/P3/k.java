package P3;

import android.os.Process;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2.dex */
public final class k extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f2248a = 2;

    public /* synthetic */ k(Runnable runnable) {
        super(runnable);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        ReentrantLock reentrantLock;
        Q4.d c5;
        switch (this.f2248a) {
            case 1:
                break;
            case 2:
                Process.setThreadPriority(10);
                super.run();
                return;
            default:
                super.run();
                return;
        }
        while (true) {
            try {
                reentrantLock = Q4.d.f2332h;
                reentrantLock.lock();
                c5 = L4.d.c();
            } catch (InterruptedException unused) {
            }
            if (c5 == Q4.d.f2335l) {
                Q4.d.f2335l = null;
                reentrantLock.unlock();
                return;
            }
            reentrantLock.unlock();
            if (c5 != null) {
                c5.j();
            }
        }
    }

    public /* synthetic */ k(String str) {
        super(str);
    }

    public /* synthetic */ k(String str, Runnable runnable) {
        super(runnable, str);
    }
}
