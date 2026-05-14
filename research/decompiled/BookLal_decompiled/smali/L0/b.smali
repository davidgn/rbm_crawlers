.class public final LL0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL0/a;


# static fields
.field public static final q:Ljava/lang/String;


# instance fields
.field public a:Landroid/os/PowerManager$WakeLock;

.field public final b:Landroid/content/Context;

.field public final c:Landroidx/work/b;

.field public final d:LJ2/e;

.field public final e:Landroidx/work/impl/WorkDatabase;

.field public final f:Ljava/util/HashMap;

.field public final l:Ljava/util/HashMap;

.field public final m:Ljava/util/List;

.field public final n:Ljava/util/HashSet;

.field public final o:Ljava/util/ArrayList;

.field public final p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    invoke-static {v0}, Landroidx/work/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LL0/b;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;LJ2/e;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL0/b;->b:Landroid/content/Context;

    iput-object p2, p0, LL0/b;->c:Landroidx/work/b;

    iput-object p3, p0, LL0/b;->d:LJ2/e;

    iput-object p4, p0, LL0/b;->e:Landroidx/work/impl/WorkDatabase;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LL0/b;->l:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LL0/b;->f:Ljava/util/HashMap;

    iput-object p5, p0, LL0/b;->m:Ljava/util/List;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LL0/b;->n:Ljava/util/HashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LL0/b;->o:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, LL0/b;->a:Landroid/os/PowerManager$WakeLock;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL0/b;->p:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;LL0/m;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p1, LL0/m;->x:Z

    invoke-virtual {p1}, LL0/m;->h()Z

    iget-object v2, p1, LL0/m;->w:LN2/o;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    iget-object v3, p1, LL0/m;->w:LN2/o;

    invoke-interface {v3, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p1, LL0/m;->f:Landroidx/work/ListenableWorker;

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->stop()V

    goto :goto_1

    :cond_1
    iget-object p1, p1, LL0/m;->e:LT0/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkSpec "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already done. Not interrupting."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    sget-object v3, LL0/m;->y:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, p1, v4}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object p1

    sget-object v2, LL0/b;->q:Ljava/lang/String;

    const-string v3, "WorkerWrapper interrupted for "

    invoke-static {v3, p0}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-virtual {p1, v2, p0, v0}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v1

    :cond_2
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object p1

    sget-object v1, LL0/b;->q:Ljava/lang/String;

    const-string v2, "WorkerWrapper could not be found for "

    invoke-static {v2, p0}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Throwable;

    invoke-virtual {p1, v1, p0, v2}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public final a(LL0/a;)V
    .locals 2

    iget-object v0, p0, LL0/b;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LL0/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, LL0/b;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LL0/b;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v1

    sget-object v2, LL0/b;->q:Ljava/lang/String;

    const-class v3, LL0/b;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " executed; reschedule = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, LL0/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL0/a;

    invoke-interface {v2, p1, p2}, LL0/a;->c(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, LL0/b;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LL0/b;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, LL0/b;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(LL0/a;)V
    .locals 2

    iget-object v0, p0, LL0/b;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LL0/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final f(Ljava/lang/String;Landroidx/work/h;)V
    .locals 5

    const-string v0, "Moving WorkSpec ("

    iget-object v1, p0, LL0/b;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    sget-object v3, LL0/b;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") to the foreground"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v0, v4}, Landroidx/work/n;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, LL0/b;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL0/m;

    if-eqz v0, :cond_1

    iget-object v2, p0, LL0/b;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    iget-object v2, p0, LL0/b;->b:Landroid/content/Context;

    const-string v3, "ProcessorForegroundLck"

    invoke-static {v2, v3}, LU0/k;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, LL0/b;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, LL0/b;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LL0/b;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, LS0/a;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/h;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, LL0/b;->b:Landroid/content/Context;

    invoke-static {p2, p1}, LC/i;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final g(Ljava/lang/String;LJ2/e;)Z
    .locals 9

    const-string v0, "Work "

    iget-object v1, p0, LL0/b;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, LL0/b;->d(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object p2

    sget-object v2, LL0/b;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already enqueued for processing"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Throwable;

    invoke-virtual {p2, v2, p1, v0}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    monitor-exit v1

    return v3

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, LL0/b;->b:Landroid/content/Context;

    iget-object v2, p0, LL0/b;->c:Landroidx/work/b;

    iget-object v4, p0, LL0/b;->d:LJ2/e;

    iget-object v5, p0, LL0/b;->e:Landroidx/work/impl/WorkDatabase;

    new-instance v6, LJ2/e;

    invoke-direct {v6}, LJ2/e;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v7, p0, LL0/b;->m:Ljava/util/List;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v6

    :goto_0
    new-instance v6, LL0/m;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v8, Landroidx/work/j;

    invoke-direct {v8}, Landroidx/work/j;-><init>()V

    iput-object v8, v6, LL0/m;->m:Landroidx/work/m;

    new-instance v8, LV0/j;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v6, LL0/m;->v:LV0/j;

    const/4 v8, 0x0

    iput-object v8, v6, LL0/m;->w:LN2/o;

    iput-object v0, v6, LL0/m;->a:Landroid/content/Context;

    iput-object v4, v6, LL0/m;->l:LJ2/e;

    iput-object p0, v6, LL0/m;->o:LL0/b;

    iput-object p1, v6, LL0/m;->b:Ljava/lang/String;

    iput-object v7, v6, LL0/m;->c:Ljava/util/List;

    iput-object p2, v6, LL0/m;->d:LJ2/e;

    iput-object v8, v6, LL0/m;->f:Landroidx/work/ListenableWorker;

    iput-object v2, v6, LL0/m;->n:Landroidx/work/b;

    iput-object v5, v6, LL0/m;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object p2

    iput-object p2, v6, LL0/m;->q:LT0/j;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->i()LD2/e;

    move-result-object p2

    iput-object p2, v6, LL0/m;->r:LD2/e;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->o()LD2/e;

    move-result-object p2

    iput-object p2, v6, LL0/m;->s:LD2/e;

    iget-object p2, v6, LL0/m;->v:LV0/j;

    new-instance v0, LJ/k;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, LJ/k;-><init>(I)V

    iput-object p0, v0, LJ/k;->b:Ljava/lang/Object;

    iput-object p1, v0, LJ/k;->c:Ljava/lang/Object;

    iput-object p2, v0, LJ/k;->d:Ljava/lang/Object;

    iget-object v2, p0, LL0/b;->d:LJ2/e;

    iget-object v2, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, LS1/q;

    invoke-virtual {p2, v0, v2}, LV0/h;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p2, p0, LL0/b;->l:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, LL0/b;->d:LJ2/e;

    iget-object p2, p2, LJ2/e;->b:Ljava/lang/Object;

    check-cast p2, LU0/i;

    invoke-virtual {p2, v6}, LU0/i;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object p2

    sget-object v0, LL0/b;->q:Ljava/lang/String;

    const-class v1, LL0/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ": processing "

    invoke-static {v1, v2, p1}, LC/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Throwable;

    invoke-virtual {p2, v0, p1, v1}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, LL0/b;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LL0/b;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LL0/b;->b:Landroid/content/Context;

    sget-object v2, LS0/a;->o:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_STOP_FOREGROUND"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, LL0/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    sget-object v3, LL0/b;->q:Ljava/lang/String;

    const-string v4, "Unable to stop foreground service"

    filled-new-array {v1}, [Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, LL0/b;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, LL0/b;->a:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Processor stopping foreground work "

    iget-object v1, p0, LL0/b;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    sget-object v3, LL0/b;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v0, v4}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, LL0/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL0/m;

    invoke-static {p1, v0}, LL0/b;->b(Ljava/lang/String;LL0/m;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Processor stopping background work "

    iget-object v1, p0, LL0/b;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    sget-object v3, LL0/b;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v0, v4}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, LL0/b;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL0/m;

    invoke-static {p1, v0}, LL0/b;->b(Ljava/lang/String;LL0/m;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
