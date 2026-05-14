.class public final LU0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, LU0/p;->a:I

    iput-object p1, p0, LU0/p;->e:Ljava/lang/Object;

    iput-object p2, p0, LU0/p;->b:Ljava/lang/Object;

    iput-object p3, p0, LU0/p;->c:Ljava/lang/Object;

    iput-object p4, p0, LU0/p;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, LU0/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v0, Ll3/M1;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU0/p;->b:Ljava/lang/Object;

    check-cast v1, Ll3/K1;

    iget v1, v1, Ll3/K1;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, LU0/p;->c:Ljava/lang/Object;

    check-cast v2, Ll3/L1;

    iget-object v3, p0, LU0/p;->d:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ll3/L1;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v2, Ll3/M1;

    iget-object v2, v2, Ll3/M1;->a:Ljava/util/IdentityHashMap;

    iget-object v3, p0, LU0/p;->c:Ljava/lang/Object;

    check-cast v3, Ll3/L1;

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v2, Ll3/M1;

    iget-object v2, v2, Ll3/M1;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v2, Ll3/M1;

    iget-object v2, v2, Ll3/M1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v2, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v2, Ll3/M1;

    iput-object v1, v2, Ll3/M1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    iget-object v3, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v3, Ll3/M1;

    iget-object v3, v3, Ll3/M1;->a:Ljava/util/IdentityHashMap;

    iget-object v4, p0, LU0/p;->c:Ljava/lang/Object;

    check-cast v4, Ll3/L1;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v3, Ll3/M1;

    iget-object v3, v3, Ll3/M1;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v3, Ll3/M1;

    iget-object v3, v3, Ll3/M1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v3, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v3, Ll3/M1;

    iput-object v1, v3, Ll3/M1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    throw v2

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :pswitch_0
    iget-object v0, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ll3/B0;->z:Z

    iget-object v0, v0, Ll3/B0;->u:Ll3/u;

    iget-object v1, p0, LU0/p;->c:Ljava/lang/Object;

    check-cast v1, Ll3/t;

    iget-object v2, p0, LU0/p;->d:Ljava/lang/Object;

    check-cast v2, Lj3/f0;

    iget-object v3, p0, LU0/p;->b:Ljava/lang/Object;

    check-cast v3, Lj3/r0;

    invoke-interface {v0, v3, v1, v2}, Ll3/u;->f(Lj3/r0;Ll3/t;Lj3/f0;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v0, Ll3/M;

    iget-object v0, v0, Ll3/M;->a:Ll3/u;

    iget-object v1, p0, LU0/p;->c:Ljava/lang/Object;

    check-cast v1, Ll3/t;

    iget-object v2, p0, LU0/p;->d:Ljava/lang/Object;

    check-cast v2, Lj3/f0;

    iget-object v3, p0, LU0/p;->b:Ljava/lang/Object;

    check-cast v3, Lj3/r0;

    invoke-interface {v0, v3, v1, v2}, Ll3/u;->f(Lj3/r0;Ll3/t;Lj3/f0;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v0, Ll3/a;

    iget-object v1, p0, LU0/p;->b:Ljava/lang/Object;

    check-cast v1, Lj3/r0;

    iget-object v2, p0, LU0/p;->c:Ljava/lang/Object;

    check-cast v2, Ll3/t;

    iget-object v3, p0, LU0/p;->d:Ljava/lang/Object;

    check-cast v3, Lj3/f0;

    invoke-virtual {v0, v1, v2, v3}, Ll3/a;->b(Lj3/r0;Ll3/t;Lj3/f0;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LU0/p;->b:Ljava/lang/Object;

    check-cast v0, Lk/f;

    if-eqz v0, :cond_2

    iget-object v1, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v1, Lj1/a;

    iget-object v2, v1, Lj1/a;->b:Ljava/lang/Object;

    check-cast v2, Lk/g;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lk/g;->E:Z

    iget-object v0, v0, Lk/f;->b:Lk/m;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lk/m;->c(Z)V

    iget-object v0, v1, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Lk/g;

    iput-boolean v2, v0, Lk/g;->E:Z

    :cond_2
    iget-object v0, p0, LU0/p;->c:Ljava/lang/Object;

    check-cast v0, Lk/o;

    invoke-virtual {v0}, Lk/o;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lk/o;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LU0/p;->d:Ljava/lang/Object;

    check-cast v1, Lk/m;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lk/m;->q(Landroid/view/MenuItem;Lk/z;I)Z

    :cond_3
    return-void

    :pswitch_4
    iget-object v0, p0, LU0/p;->d:Ljava/lang/Object;

    check-cast v0, LV0/j;

    const-string v1, "Ignoring setProgressAsync(...). WorkSpec ("

    iget-object v2, p0, LU0/p;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v4

    sget-object v5, LU0/q;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Updating progress for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LU0/p;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/work/g;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v8}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v4, p0, LU0/p;->e:Ljava/lang/Object;

    check-cast v4, LU0/q;

    iget-object v6, v4, LU0/q;->a:Landroidx/work/impl/WorkDatabase;

    iget-object v4, v4, LU0/q;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v6}, Lv0/h;->c()V

    :try_start_3
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v6

    invoke-virtual {v6, v3}, LT0/j;->h(Ljava/lang/String;)LT0/i;

    move-result-object v6

    if-eqz v6, :cond_5

    iget v6, v6, LT0/i;->b:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_4

    new-instance v1, LT0/g;

    invoke-direct {v1, v3, v2}, LT0/g;-><init>(Ljava/lang/String;Landroidx/work/g;)V

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->m()LR0/i;

    move-result-object v2

    iget-object v3, v2, LR0/i;->a:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, Lv0/h;->b()V

    invoke-virtual {v3}, Lv0/h;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v2, v2, LR0/i;->b:Ljava/lang/Object;

    check-cast v2, LT0/b;

    invoke-virtual {v2, v1}, LT0/b;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lv0/h;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v3}, Lv0/h;->f()V

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {v3}, Lv0/h;->f()V

    throw v1

    :catchall_3
    move-exception v1

    goto :goto_4

    :cond_4
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is not in a RUNNING state."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v5, v1, v3}, Landroidx/work/n;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LV0/j;->i(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lv0/h;->h()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_3
    invoke-virtual {v4}, Lv0/h;->f()V

    goto :goto_5

    :cond_5
    :try_start_6
    const-string v1, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_4
    :try_start_7
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    sget-object v3, LU0/q;->c:Ljava/lang/String;

    const-string v5, "Error updating Worker progress"

    filled-new-array {v1}, [Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, LV0/j;->j(Ljava/lang/Throwable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3

    :goto_5
    return-void

    :catchall_4
    move-exception v0

    invoke-virtual {v4}, Lv0/h;->f()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
