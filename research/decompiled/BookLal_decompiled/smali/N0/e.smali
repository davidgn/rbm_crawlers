.class public final LN0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP0/b;
.implements LL0/a;
.implements LU0/s;


# static fields
.field public static final o:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:LN0/h;

.field public final e:LP0/c;

.field public final f:Ljava/lang/Object;

.field public l:I

.field public m:Landroid/os/PowerManager$WakeLock;

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    invoke-static {v0}, Landroidx/work/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LN0/e;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;LN0/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/e;->a:Landroid/content/Context;

    iput p2, p0, LN0/e;->b:I

    iput-object p4, p0, LN0/e;->d:LN0/h;

    iput-object p3, p0, LN0/e;->c:Ljava/lang/String;

    iget-object p2, p4, LN0/h;->b:LJ2/e;

    new-instance p3, LP0/c;

    invoke-direct {p3, p1, p2, p0}, LP0/c;-><init>(Landroid/content/Context;LW0/a;LP0/b;)V

    iput-object p3, p0, LN0/e;->e:LP0/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, LN0/e;->n:Z

    iput p1, p0, LN0/e;->l:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/e;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const-string v0, "Releasing wakelock "

    iget-object v1, p0, LN0/e;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, LN0/e;->e:LP0/c;

    invoke-virtual {v2}, LP0/c;->c()V

    iget-object v2, p0, LN0/e;->d:LN0/h;

    iget-object v2, v2, LN0/h;->c:LU0/u;

    iget-object v3, p0, LN0/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, LU0/u;->b(Ljava/lang/String;)V

    iget-object v2, p0, LN0/e;->m:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    sget-object v3, LN0/e;->o:Ljava/lang/String;

    iget-object v4, p0, LN0/e;->m:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, LN0/e;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for WorkSpec "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v0, v4}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, LN0/e;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LN0/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LN0/e;->b:I

    const-string v3, ")"

    invoke-static {v2, v3, v0}, Le1/i;->b(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, LN0/e;->a:Landroid/content/Context;

    invoke-static {v2, v0}, LU0/k;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, LN0/e;->m:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    iget-object v2, p0, LN0/e;->m:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Acquiring wakelock "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for WorkSpec "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    sget-object v5, LN0/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v5, v2, v4}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, LN0/e;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, LN0/e;->d:LN0/h;

    iget-object v0, v0, LN0/h;->e:LL0/l;

    iget-object v0, v0, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v0

    invoke-virtual {v0, v1}, LT0/j;->h(Ljava/lang/String;)LT0/i;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LN0/e;->d()V

    return-void

    :cond_0
    invoke-virtual {v0}, LT0/i;->b()Z

    move-result v2

    iput-boolean v2, p0, LN0/e;->n:Z

    if-nez v2, :cond_1

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    const-string v2, "No constraints for "

    invoke-static {v2, v1}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v2, v3}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, LN0/e;->f(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, LN0/e;->e:LP0/c;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, LP0/c;->b(Ljava/util/Collection;)V

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onExecuted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    sget-object v2, LN0/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LN0/e;->a()V

    iget p1, p0, LN0/e;->b:I

    iget-object v0, p0, LN0/e;->d:LN0/h;

    iget-object v1, p0, LN0/e;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    iget-object p2, p0, LN0/e;->c:Ljava/lang/String;

    invoke-static {v1, p2}, LN0/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    new-instance v2, LN0/g;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3, p2}, LN0/g;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, LN0/h;->e(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean p2, p0, LN0/e;->n:Z

    if-eqz p2, :cond_1

    new-instance p2, Landroid/content/Intent;

    const-class v2, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, LN0/g;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2, p2}, LN0/g;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, LN0/h;->e(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 10

    const-string v0, "Already stopped work for "

    const-string v1, "Processor does not have WorkSpec "

    const-string v2, "WorkSpec "

    const-string v3, "Stopping work for WorkSpec "

    iget-object v4, p0, LN0/e;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v5, p0, LN0/e;->l:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ge v5, v6, :cond_1

    iput v6, p0, LN0/e;->l:I

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    sget-object v5, LN0/e;->o:Ljava/lang/String;

    iget-object v6, p0, LN0/e;->c:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v3, v6}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, LN0/e;->a:Landroid/content/Context;

    iget-object v3, p0, LN0/e;->c:Ljava/lang/String;

    new-instance v6, Landroid/content/Intent;

    const-class v8, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v6, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ACTION_STOP_WORK"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "KEY_WORKSPEC_ID"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, LN0/e;->d:LN0/h;

    new-instance v3, LN0/g;

    iget v8, p0, LN0/e;->b:I

    const/4 v9, 0x0

    invoke-direct {v3, v0, v8, v9, v6}, LN0/g;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-virtual {v0, v3}, LN0/h;->e(Ljava/lang/Runnable;)V

    iget-object v0, p0, LN0/e;->d:LN0/h;

    iget-object v0, v0, LN0/h;->d:LL0/b;

    iget-object v3, p0, LN0/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, LL0/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    iget-object v1, p0, LN0/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needs to be rescheduled"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v1, v2}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, LN0/e;->a:Landroid/content/Context;

    iget-object v1, p0, LN0/e;->c:Ljava/lang/String;

    invoke-static {v0, v1}, LN0/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, LN0/e;->d:LN0/h;

    new-instance v2, LN0/g;

    iget v3, p0, LN0/e;->b:I

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v5, v0}, LN0/g;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-virtual {v1, v2}, LN0/h;->e(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    iget-object v2, p0, LN0/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". No need to reschedule "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v1, v2}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v1

    sget-object v2, LN0/e;->o:Ljava/lang/String;

    iget-object v3, p0, LN0/e;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v0, v3}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v4

    return-void

    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e(Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0}, LN0/e;->d()V

    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 6

    const-string v0, "Already started work for "

    const-string v1, "onAllConstraintsMet for "

    iget-object v2, p0, LN0/e;->c:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LN0/e;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v2, p0, LN0/e;->l:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v0, 0x1

    iput v0, p0, LN0/e;->l:I

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    sget-object v2, LN0/e;->o:Ljava/lang/String;

    iget-object v4, p0, LN0/e;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1, v3}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, LN0/e;->d:LN0/h;

    iget-object v0, v0, LN0/h;->d:LL0/b;

    iget-object v1, p0, LN0/e;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LL0/b;->g(Ljava/lang/String;LJ2/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LN0/e;->d:LN0/h;

    iget-object v0, v0, LN0/h;->c:LU0/u;

    iget-object v1, p0, LN0/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, LU0/u;->a(Ljava/lang/String;LN0/e;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, LN0/e;->a()V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v1

    sget-object v2, LN0/e;->o:Ljava/lang/String;

    iget-object v4, p0, LN0/e;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v0, v3}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
