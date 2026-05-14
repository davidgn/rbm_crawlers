package com.google.firebase.firestore.util;

import java.util.concurrent.Executor;
import java.util.concurrent.Semaphore;
/* loaded from: classes2.dex */
public class BackgroundQueue implements Executor {
    private Semaphore completedTasks = new Semaphore(0);
    private int pendingTaskCount = 0;

    public static /* synthetic */ void a(BackgroundQueue backgroundQueue, Runnable runnable) {
        backgroundQueue.lambda$execute$0(runnable);
    }

    public /* synthetic */ void lambda$execute$0(Runnable runnable) {
        runnable.run();
        this.completedTasks.release();
    }

    public void drain() {
        try {
            this.completedTasks.acquire(this.pendingTaskCount);
            this.pendingTaskCount = 0;
        } catch (InterruptedException e5) {
            Thread.currentThread().interrupt();
            Assert.fail("Interrupted while waiting for background task", e5);
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.pendingTaskCount++;
        Executors.BACKGROUND_EXECUTOR.execute(new e(3, this, runnable));
    }
}
