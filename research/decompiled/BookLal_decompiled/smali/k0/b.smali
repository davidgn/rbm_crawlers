.class public abstract Lk0/b;
.super Lk0/e;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field private volatile mCancellingTask:Lk0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/a;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mHandler:Landroid/os/Handler;

.field private mLastLoadCompleteTime:J

.field private volatile mTask:Lk0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/a;"
        }
    .end annotation
.end field

.field private mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lk0/e;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Lk0/b;->mLastLoadCompleteTime:J

    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 0

    return-void
.end method

.method public dispatchOnCancelled(Lk0/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk0/a;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lk0/b;->onCanceled(Ljava/lang/Object;)V

    iget-object p2, p0, Lk0/b;->mCancellingTask:Lk0/a;

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lk0/e;->rollbackContentChanged()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lk0/b;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Lk0/b;->mCancellingTask:Lk0/a;

    invoke-virtual {p0}, Lk0/e;->deliverCancellation()V

    invoke-virtual {p0}, Lk0/b;->executePendingTask()V

    :cond_0
    return-void
.end method

.method public dispatchOnLoadComplete(Lk0/a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk0/a;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lk0/b;->mTask:Lk0/a;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lk0/b;->dispatchOnCancelled(Lk0/a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lk0/e;->isAbandoned()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lk0/b;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lk0/e;->commitContentChanged()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lk0/b;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Lk0/b;->mTask:Lk0/a;

    invoke-virtual {p0, p2}, Lk0/e;->deliverResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lk0/e;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Lk0/b;->mTask:Lk0/a;

    const-string p4, " waiting="

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lk0/b;->mTask:Lk0/a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lk0/b;->mTask:Lk0/a;

    iget-boolean p2, p2, Lk0/a;->e:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    iget-object p2, p0, Lk0/b;->mCancellingTask:Lk0/a;

    if-eqz p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lk0/b;->mCancellingTask:Lk0/a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lk0/b;->mCancellingTask:Lk0/a;

    iget-boolean p2, p2, Lk0/a;->e:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-wide v0, p0, Lk0/b;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v0, p0, Lk0/b;->mUpdateThrottle:J

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " mLastLoadCompleteTime="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lk0/b;->mLastLoadCompleteTime:J

    const-wide/16 v2, -0x2710

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    const-string p1, "--"

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "-"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lk0/b;->mLastLoadCompleteTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void
.end method

.method public executePendingTask()V
    .locals 8

    iget-object v0, p0, Lk0/b;->mCancellingTask:Lk0/a;

    if-nez v0, :cond_6

    iget-object v0, p0, Lk0/b;->mTask:Lk0/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lk0/b;->mTask:Lk0/a;

    iget-boolean v0, v0, Lk0/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk0/b;->mTask:Lk0/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lk0/a;->e:Z

    iget-object v0, p0, Lk0/b;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lk0/b;->mTask:Lk0/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-wide v0, p0, Lk0/b;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lk0/b;->mLastLoadCompleteTime:J

    iget-wide v6, p0, Lk0/b;->mUpdateThrottle:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lk0/b;->mTask:Lk0/a;

    iput-boolean v1, v0, Lk0/a;->e:Z

    iget-object v0, p0, Lk0/b;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lk0/b;->mTask:Lk0/a;

    iget-wide v2, p0, Lk0/b;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Lk0/b;->mUpdateThrottle:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Lk0/b;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lk0/b;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lk0/b;->mExecutor:Ljava/util/concurrent/Executor;

    :cond_2
    iget-object v0, p0, Lk0/b;->mTask:Lk0/a;

    iget-object v2, p0, Lk0/b;->mExecutor:Ljava/util/concurrent/Executor;

    iget v3, v0, Lk0/a;->b:I

    const/4 v4, 0x2

    if-eq v3, v1, :cond_5

    iget v0, v0, Lk0/a;->b:I

    invoke-static {v0}, Ls/e;->d(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    if-eq v0, v4, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We should never reach this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput v4, v0, Lk0/a;->b:I

    iget-object v0, v0, Lk0/a;->a:Lk0/f;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 1

    iget-object v0, p0, Lk0/b;->mCancellingTask:Lk0/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
.end method

.method public onCancelLoad()Z
    .locals 5

    iget-object v0, p0, Lk0/b;->mTask:Lk0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lk0/e;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lk0/e;->onContentChanged()V

    :cond_0
    iget-object v0, p0, Lk0/b;->mCancellingTask:Lk0/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lk0/b;->mTask:Lk0/a;

    iget-boolean v0, v0, Lk0/a;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk0/b;->mTask:Lk0/a;

    iput-boolean v1, v0, Lk0/a;->e:Z

    iget-object v0, p0, Lk0/b;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lk0/b;->mTask:Lk0/a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v2, p0, Lk0/b;->mTask:Lk0/a;

    return v1

    :cond_2
    iget-object v0, p0, Lk0/b;->mTask:Lk0/a;

    iget-boolean v0, v0, Lk0/a;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lk0/b;->mTask:Lk0/a;

    iput-boolean v1, v0, Lk0/a;->e:Z

    iget-object v0, p0, Lk0/b;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lk0/b;->mTask:Lk0/a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lk0/b;->mTask:Lk0/a;

    return v1

    :cond_3
    iget-object v0, p0, Lk0/b;->mTask:Lk0/a;

    iget-object v3, v0, Lk0/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lk0/a;->a:Lk0/f;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lk0/b;->mTask:Lk0/a;

    iput-object v1, p0, Lk0/b;->mCancellingTask:Lk0/a;

    invoke-virtual {p0}, Lk0/b;->cancelLoadInBackground()V

    :cond_4
    iput-object v2, p0, Lk0/b;->mTask:Lk0/a;

    return v0

    :cond_5
    return v1
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onForceLoad()V
    .locals 1

    invoke-virtual {p0}, Lk0/e;->cancelLoad()Z

    new-instance v0, Lk0/a;

    invoke-direct {v0, p0}, Lk0/a;-><init>(Lk0/b;)V

    iput-object v0, p0, Lk0/b;->mTask:Lk0/a;

    invoke-virtual {p0}, Lk0/b;->executePendingTask()V

    return-void
.end method

.method public onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lk0/b;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 2

    iput-wide p1, p0, Lk0/b;->mUpdateThrottle:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lk0/b;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method
