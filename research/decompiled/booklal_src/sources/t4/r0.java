package t4;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes2.dex */
public final /* synthetic */ class r0 implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "reCaptcha");
        thread.setDaemon(true);
        return thread;
    }
}
