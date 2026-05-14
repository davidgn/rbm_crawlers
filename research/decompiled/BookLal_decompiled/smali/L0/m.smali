.class public final LL0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final y:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;

.field public d:LJ2/e;

.field public e:LT0/i;

.field public f:Landroidx/work/ListenableWorker;

.field public l:LJ2/e;

.field public m:Landroidx/work/m;

.field public n:Landroidx/work/b;

.field public o:LL0/b;

.field public p:Landroidx/work/impl/WorkDatabase;

.field public q:LT0/j;

.field public r:LD2/e;

.field public s:LD2/e;

.field public t:Ljava/util/ArrayList;

.field public u:Ljava/lang/String;

.field public v:LV0/j;

.field public w:LN2/o;

.field public volatile x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    invoke-static {v0}, Landroidx/work/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LL0/m;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/m;)V
    .locals 12

    instance-of v0, p1, Landroidx/work/l;

    const/4 v1, 0x0

    sget-object v2, LL0/m;->y:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object p1

    iget-object v0, p0, LL0/m;->u:Ljava/lang/String;

    const-string v3, "Worker result SUCCESS for "

    invoke-static {v3, v0}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Throwable;

    invoke-virtual {p1, v2, v0, v3}, Landroidx/work/n;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object p1, p0, LL0/m;->e:LT0/i;

    invoke-virtual {p1}, LT0/i;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LL0/m;->d()V

    goto/16 :goto_5

    :cond_0
    iget-object p1, p0, LL0/m;->r:LD2/e;

    iget-object v0, p0, LL0/m;->b:Ljava/lang/String;

    iget-object v3, p0, LL0/m;->q:LT0/j;

    iget-object v4, p0, LL0/m;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Lv0/h;->c()V

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v5}, LT0/j;->n(I[Ljava/lang/String;)V

    iget-object v5, p0, LL0/m;->m:Landroidx/work/m;

    check-cast v5, Landroidx/work/l;

    iget-object v5, v5, Landroidx/work/l;->a:Landroidx/work/g;

    invoke-virtual {v3, v0, v5}, LT0/j;->l(Ljava/lang/String;Landroidx/work/g;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v0}, LD2/e;->j(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, LT0/j;->e(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    const-string v8, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    const/4 v9, 0x1

    invoke-static {v9, v8}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v8

    if-nez v7, :cond_2

    invoke-virtual {v8, v9}, Lv0/i;->g(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v9, v7}, Lv0/i;->m(ILjava/lang/String;)V

    :goto_1
    iget-object v10, p1, LD2/e;->b:Ljava/lang/Object;

    check-cast v10, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v10}, Lv0/h;->b()V

    invoke-virtual {v10, v8}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_3

    move v11, v9

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    move v11, v1

    :goto_2
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, Lv0/i;->release()V

    if-eqz v11, :cond_1

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting status to enqueued for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v1, [Ljava/lang/Throwable;

    invoke-virtual {v8, v2, v10, v11}, Landroidx/work/n;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, LT0/j;->n(I[Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6, v7}, LT0/j;->m(JLjava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, Lv0/i;->release()V

    throw p1

    :cond_4
    invoke-virtual {v4}, Lv0/h;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v4}, Lv0/h;->f()V

    invoke-virtual {p0, v1}, LL0/m;->e(Z)V

    goto :goto_5

    :goto_4
    invoke-virtual {v4}, Lv0/h;->f()V

    invoke-virtual {p0, v1}, LL0/m;->e(Z)V

    throw p1

    :cond_5
    instance-of p1, p1, Landroidx/work/k;

    if-eqz p1, :cond_6

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object p1

    iget-object v0, p0, LL0/m;->u:Ljava/lang/String;

    const-string v3, "Worker result RETRY for "

    invoke-static {v3, v0}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {p1, v2, v0, v1}, Landroidx/work/n;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LL0/m;->c()V

    goto :goto_5

    :cond_6
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object p1

    iget-object v0, p0, LL0/m;->u:Ljava/lang/String;

    const-string v3, "Worker result FAILURE for "

    invoke-static {v3, v0}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {p1, v2, v0, v1}, Landroidx/work/n;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object p1, p0, LL0/m;->e:LT0/i;

    invoke-virtual {p1}, LT0/i;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, LL0/m;->d()V

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, LL0/m;->g()V

    :goto_5
    return-void
.end method

.method public final b()V
    .locals 7

    invoke-virtual {p0}, LL0/m;->h()Z

    move-result v0

    iget-object v1, p0, LL0/m;->b:Ljava/lang/String;

    iget-object v2, p0, LL0/m;->p:Landroidx/work/impl/WorkDatabase;

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lv0/h;->c()V

    :try_start_0
    iget-object v0, p0, LL0/m;->q:LT0/j;

    invoke-virtual {v0, v1}, LT0/j;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->m()LR0/i;

    move-result-object v3

    iget-object v4, v3, LR0/i;->a:Ljava/lang/Object;

    check-cast v4, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v4}, Lv0/h;->b()V

    iget-object v3, v3, LR0/i;->c:Ljava/lang/Object;

    check-cast v3, LT0/e;

    invoke-virtual {v3}, Lv0/k;->a()LA0/f;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v5, v6}, LA0/b;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v6, v1}, LA0/b;->g(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v4}, Lv0/h;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5}, LA0/f;->t()V

    invoke-virtual {v4}, Lv0/h;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Lv0/h;->f()V

    invoke-virtual {v3, v5}, Lv0/k;->c(LA0/f;)V

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LL0/m;->e(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, LL0/m;->m:Landroidx/work/m;

    invoke-virtual {p0, v0}, LL0/m;->a(Landroidx/work/m;)V

    goto :goto_1

    :cond_2
    invoke-static {v0}, LC/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, LL0/m;->c()V

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lv0/h;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lv0/h;->f()V

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v4}, Lv0/h;->f()V

    invoke-virtual {v3, v5}, Lv0/k;->c(LA0/f;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-virtual {v2}, Lv0/h;->f()V

    throw v0

    :cond_4
    :goto_3
    iget-object v0, p0, LL0/m;->c:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LL0/c;

    invoke-interface {v4, v1}, LL0/c;->d(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, LL0/m;->n:Landroidx/work/b;

    invoke-static {v1, v2, v0}, LL0/d;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_6
    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, LL0/m;->b:Ljava/lang/String;

    iget-object v1, p0, LL0/m;->q:LT0/j;

    iget-object v2, p0, LL0/m;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lv0/h;->c()V

    const/4 v3, 0x1

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, LT0/j;->n(I[Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v0}, LT0/j;->m(JLjava/lang/String;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5, v0}, LT0/j;->j(JLjava/lang/String;)V

    invoke-virtual {v2}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lv0/h;->f()V

    invoke-virtual {p0, v3}, LL0/m;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lv0/h;->f()V

    invoke-virtual {p0, v3}, LL0/m;->e(Z)V

    throw v0
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, LL0/m;->b:Ljava/lang/String;

    iget-object v1, p0, LL0/m;->q:LT0/j;

    iget-object v2, p0, LL0/m;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lv0/h;->c()V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v0}, LT0/j;->m(JLjava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, LT0/j;->n(I[Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LT0/j;->k(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5, v0}, LT0/j;->j(JLjava/lang/String;)V

    invoke-virtual {v2}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lv0/h;->f()V

    invoke-virtual {p0, v3}, LL0/m;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lv0/h;->f()V

    invoke-virtual {p0, v3}, LL0/m;->e(Z)V

    throw v0
.end method

.method public final e(Z)V
    .locals 5

    iget-object v0, p0, LL0/m;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lv0/h;->c()V

    :try_start_0
    iget-object v0, p0, LL0/m;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v1

    iget-object v0, v0, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    invoke-virtual {v0, v1}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    move v3, v2

    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lv0/i;->release()V

    if-nez v3, :cond_1

    iget-object v0, p0, LL0/m;->a:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v1, v2}, LU0/g;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    iget-object v0, p0, LL0/m;->q:LT0/j;

    iget-object v1, p0, LL0/m;->b:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, LT0/j;->n(I[Ljava/lang/String;)V

    iget-object v0, p0, LL0/m;->q:LT0/j;

    iget-object v1, p0, LL0/m;->b:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3, v1}, LT0/j;->j(JLjava/lang/String;)V

    :cond_2
    iget-object v0, p0, LL0/m;->e:LT0/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, LL0/m;->f:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->isRunInForeground()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LL0/m;->o:LL0/b;

    iget-object v1, p0, LL0/m;->b:Ljava/lang/String;

    iget-object v2, v0, LL0/b;->p:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, v0, LL0/b;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, LL0/b;->h()V

    monitor-exit v2

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw p1

    :cond_3
    :goto_2
    iget-object v0, p0, LL0/m;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lv0/h;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, LL0/m;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lv0/h;->f()V

    iget-object v0, p0, LL0/m;->v:LV0/j;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, LV0/j;->i(Ljava/lang/Object;)Z

    return-void

    :goto_3
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lv0/i;->release()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    iget-object v0, p0, LL0/m;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lv0/h;->f()V

    throw p1
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, LL0/m;->q:LT0/j;

    iget-object v1, p0, LL0/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LT0/j;->e(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "Status for "

    sget-object v4, LL0/m;->y:Ljava/lang/String;

    const/4 v5, 0x0

    if-ne v0, v2, :cond_0

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    const-string v2, " is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v3, v1, v2}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v1, v2}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LL0/m;->e(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    const-string v6, " is "

    invoke-static {v3, v1, v6}, Lcom/google/android/gms/ads/internal/util/client/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, LC/a;->A(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; not doing any work"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Throwable;

    invoke-virtual {v2, v4, v0, v1}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v5}, LL0/m;->e(Z)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 8

    iget-object v0, p0, LL0/m;->b:Ljava/lang/String;

    iget-object v1, p0, LL0/m;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lv0/h;->c()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, LL0/m;->q:LT0/j;

    invoke-virtual {v5, v4}, LT0/j;->e(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v6}, LT0/j;->n(I[Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, LL0/m;->r:LD2/e;

    invoke-virtual {v5, v4}, LD2/e;->j(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, LL0/m;->m:Landroidx/work/m;

    check-cast v3, Landroidx/work/j;

    iget-object v3, v3, Landroidx/work/j;->a:Landroidx/work/g;

    iget-object v4, p0, LL0/m;->q:LT0/j;

    invoke-virtual {v4, v0, v3}, LT0/j;->l(Ljava/lang/String;Landroidx/work/g;)V

    invoke-virtual {v1}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lv0/h;->f()V

    invoke-virtual {p0, v2}, LL0/m;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lv0/h;->f()V

    invoke-virtual {p0, v2}, LL0/m;->e(Z)V

    throw v0
.end method

.method public final h()Z
    .locals 5

    iget-boolean v0, p0, LL0/m;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    sget-object v2, LL0/m;->y:Ljava/lang/String;

    iget-object v3, p0, LL0/m;->u:Ljava/lang/String;

    const-string v4, "Work interrupted for "

    invoke-static {v4, v3}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, LL0/m;->q:LT0/j;

    iget-object v2, p0, LL0/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, LT0/j;->e(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, LL0/m;->e(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, LC/a;->d(I)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, LL0/m;->e(Z)V

    :goto_0
    return v2

    :cond_1
    return v1
.end method

.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, v1, LL0/m;->s:LD2/e;

    iget-object v5, v1, LL0/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, LD2/e;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, LL0/m;->t:Ljava/util/ArrayList;

    const-string v6, "Work [ id="

    const-string v7, ", tags={ "

    invoke-static {v6, v5, v7}, Lcom/google/android/gms/ads/internal/util/client/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v7, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v7, :cond_0

    move v7, v3

    goto :goto_1

    :cond_0
    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, " } ]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LL0/m;->u:Ljava/lang/String;

    iget-object v6, v1, LL0/m;->q:LT0/j;

    const-string v0, "Delaying execution for "

    const-string v7, "Didn\'t find WorkSpec for id "

    invoke-virtual/range {p0 .. p0}, LL0/m;->h()Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_a

    :cond_2
    iget-object v8, v1, LL0/m;->p:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v8}, Lv0/h;->c()V

    :try_start_0
    invoke-virtual {v6, v5}, LT0/j;->h(Ljava/lang/String;)LT0/i;

    move-result-object v9

    iput-object v9, v1, LL0/m;->e:LT0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v10, LL0/m;->y:Ljava/lang/String;

    if-nez v9, :cond_3

    :try_start_1
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v10, v2, v4}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, LL0/m;->e(Z)V

    invoke-virtual {v8}, Lv0/h;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v8}, Lv0/h;->f()V

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_3
    :try_start_2
    iget v7, v9, LT0/i;->b:I

    if-eq v7, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, LL0/m;->f()V

    invoke-virtual {v8}, Lv0/h;->h()V

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    iget-object v2, v1, LL0/m;->e:LT0/i;

    iget-object v2, v2, LT0/i;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not in ENQUEUED state. Nothing more to do."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v10, v2, v3}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, LT0/i;->c()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v1, LL0/m;->e:LT0/i;

    iget v9, v7, LT0/i;->b:I

    if-ne v9, v4, :cond_5

    iget v7, v7, LT0/i;->k:I

    if-lez v7, :cond_5

    move v7, v4

    goto :goto_3

    :cond_5
    move v7, v3

    :goto_3
    if-eqz v7, :cond_8

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v7, v1, LL0/m;->e:LT0/i;

    iget-wide v13, v7, LT0/i;->n:J

    const-wide/16 v15, 0x0

    cmp-long v9, v13, v15

    if-nez v9, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, LT0/i;->a()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-gez v7, :cond_8

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    iget-object v5, v1, LL0/m;->e:LT0/i;

    iget-object v5, v5, LT0/i;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it is being executed before schedule."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v10, v0, v3}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {v1, v4}, LL0/m;->e(Z)V

    invoke-virtual {v8}, Lv0/h;->h()V

    goto/16 :goto_2

    :cond_8
    :goto_4
    invoke-virtual {v8}, Lv0/h;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v8}, Lv0/h;->f()V

    iget-object v0, v1, LL0/m;->e:LT0/i;

    invoke-virtual {v0}, LT0/i;->c()Z

    move-result v0

    iget-object v7, v1, LL0/m;->n:Landroidx/work/b;

    if-eqz v0, :cond_9

    iget-object v0, v1, LL0/m;->e:LT0/i;

    iget-object v0, v0, LT0/i;->e:Landroidx/work/g;

    goto/16 :goto_8

    :cond_9
    iget-object v0, v7, Landroidx/work/b;->d:Lz2/e;

    iget-object v9, v1, LL0/m;->e:LT0/i;

    iget-object v9, v9, LT0/i;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/work/i;->a:Ljava/lang/String;

    :try_start_3
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/i;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v11

    const-string v12, "Trouble instantiating + "

    invoke-static {v12, v9}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v12, v4, [Ljava/lang/Throwable;

    aput-object v0, v12, v3

    sget-object v0, Landroidx/work/i;->a:Ljava/lang/String;

    invoke-virtual {v11, v0, v9, v12}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_a

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    iget-object v2, v1, LL0/m;->e:LT0/i;

    iget-object v2, v2, LT0/i;->d:Ljava/lang/String;

    const-string v4, "Could not create Input Merger "

    invoke-static {v4, v2}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v10, v2, v3}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, LL0/m;->g()V

    goto/16 :goto_a

    :cond_a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v1, LL0/m;->e:LT0/i;

    iget-object v11, v11, LT0/i;->e:Landroidx/work/g;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v11, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    invoke-static {v4, v11}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v11

    if-nez v5, :cond_b

    invoke-virtual {v11, v4}, Lv0/i;->g(I)V

    goto :goto_6

    :cond_b
    invoke-virtual {v11, v4, v5}, Lv0/i;->m(ILjava/lang/String;)V

    :goto_6
    iget-object v12, v6, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v12}, Lv0/h;->b()V

    invoke-virtual {v12, v11}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v12

    :try_start_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    invoke-static {v14}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :cond_c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Lv0/i;->release()V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v9}, Landroidx/work/i;->a(Ljava/util/ArrayList;)Landroidx/work/g;

    move-result-object v0

    :goto_8
    new-instance v9, Landroidx/work/WorkerParameters;

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v11

    iget-object v12, v1, LL0/m;->t:Ljava/util/ArrayList;

    iget-object v13, v1, LL0/m;->e:LT0/i;

    iget v13, v13, LT0/i;->k:I

    iget-object v14, v7, Landroidx/work/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v15, LU0/q;

    iget-object v2, v1, LL0/m;->l:LJ2/e;

    invoke-direct {v15, v8, v2}, LU0/q;-><init>(Landroidx/work/impl/WorkDatabase;LJ2/e;)V

    new-instance v4, LU0/o;

    iget-object v3, v1, LL0/m;->o:LL0/b;

    invoke-direct {v4, v8, v3, v2}, LU0/o;-><init>(Landroidx/work/impl/WorkDatabase;LL0/b;LJ2/e;)V

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v11, v9, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    iput-object v0, v9, Landroidx/work/WorkerParameters;->b:Landroidx/work/g;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v9, Landroidx/work/WorkerParameters;->c:Ljava/util/HashSet;

    iget-object v0, v1, LL0/m;->d:LJ2/e;

    iput-object v0, v9, Landroidx/work/WorkerParameters;->d:LJ2/e;

    iput v13, v9, Landroidx/work/WorkerParameters;->e:I

    iput-object v14, v9, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/ExecutorService;

    iput-object v2, v9, Landroidx/work/WorkerParameters;->g:LJ2/e;

    iget-object v0, v7, Landroidx/work/b;->c:Landroidx/work/u;

    iput-object v0, v9, Landroidx/work/WorkerParameters;->h:Landroidx/work/u;

    iput-object v15, v9, Landroidx/work/WorkerParameters;->i:LU0/q;

    iput-object v4, v9, Landroidx/work/WorkerParameters;->j:LU0/o;

    iget-object v3, v1, LL0/m;->f:Landroidx/work/ListenableWorker;

    if-nez v3, :cond_d

    iget-object v3, v1, LL0/m;->e:LT0/i;

    iget-object v3, v3, LT0/i;->c:Ljava/lang/String;

    iget-object v7, v1, LL0/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v7, v3, v9}, Landroidx/work/v;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v0

    iput-object v0, v1, LL0/m;->f:Landroidx/work/ListenableWorker;

    :cond_d
    iget-object v0, v1, LL0/m;->f:Landroidx/work/ListenableWorker;

    if-nez v0, :cond_e

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    iget-object v2, v1, LL0/m;->e:LT0/i;

    iget-object v2, v2, LT0/i;->c:Ljava/lang/String;

    const-string v3, "Could not create Worker "

    invoke-static {v3, v2}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v10, v2, v3}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, LL0/m;->g()V

    goto/16 :goto_a

    :cond_e
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    iget-object v2, v1, LL0/m;->e:LT0/i;

    iget-object v2, v2, LT0/i;->c:Ljava/lang/String;

    const-string v3, "Received an already-used Worker "

    const-string v4, "; WorkerFactory should return new instances"

    invoke-static {v3, v2, v4}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v10, v2, v3}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, LL0/m;->g()V

    goto/16 :goto_a

    :cond_f
    const/4 v3, 0x0

    iget-object v0, v1, LL0/m;->f:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->setUsed()V

    invoke-virtual {v8}, Lv0/h;->c()V

    :try_start_5
    invoke-virtual {v6, v5}, LT0/j;->e(Ljava/lang/String;)I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v6, v3, v0}, LT0/j;->n(I[Ljava/lang/String;)V

    invoke-virtual {v6, v5}, LT0/j;->i(Ljava/lang/String;)V

    move v3, v7

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_b

    :cond_10
    :goto_9
    invoke-virtual {v8}, Lv0/h;->h()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v8}, Lv0/h;->f()V

    if-eqz v3, :cond_12

    invoke-virtual/range {p0 .. p0}, LL0/m;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_a

    :cond_11
    new-instance v0, LV0/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v3, LU0/m;

    iget-object v5, v1, LL0/m;->e:LT0/i;

    iget-object v6, v1, LL0/m;->f:Landroidx/work/ListenableWorker;

    iget-object v7, v1, LL0/m;->l:LJ2/e;

    iget-object v8, v1, LL0/m;->a:Landroid/content/Context;

    move-object/from16 v17, v3

    move-object/from16 v18, v8

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v4

    move-object/from16 v22, v7

    invoke-direct/range {v17 .. v22}, LU0/m;-><init>(Landroid/content/Context;LT0/i;Landroidx/work/ListenableWorker;LU0/o;LJ2/e;)V

    iget-object v4, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v4, LS1/q;

    invoke-virtual {v4, v3}, LS1/q;->execute(Ljava/lang/Runnable;)V

    new-instance v4, LJ/k;

    iget-object v3, v3, LU0/m;->a:LV0/j;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v3, v0, v5}, LJ/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v5, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v5, LS1/q;

    invoke-virtual {v3, v4, v5}, LV0/h;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v3, v1, LL0/m;->u:Ljava/lang/String;

    new-instance v4, LJ/k;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v0, v3, v5}, LJ/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v2, v2, LJ2/e;->b:Ljava/lang/Object;

    check-cast v2, LU0/i;

    invoke-virtual {v0, v4, v2}, LV0/h;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_a

    :cond_12
    invoke-virtual/range {p0 .. p0}, LL0/m;->f()V

    :goto_a
    return-void

    :goto_b
    invoke-virtual {v8}, Lv0/h;->f()V

    throw v0

    :goto_c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Lv0/i;->release()V

    throw v0

    :goto_d
    invoke-virtual {v8}, Lv0/h;->f()V

    throw v0
.end method
