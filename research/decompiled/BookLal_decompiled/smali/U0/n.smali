.class public final LU0/n;
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

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, LU0/n;->a:I

    iput-object p1, p0, LU0/n;->f:Ljava/lang/Object;

    iput-object p2, p0, LU0/n;->b:Ljava/lang/Object;

    iput-object p3, p0, LU0/n;->c:Ljava/lang/Object;

    iput-object p4, p0, LU0/n;->d:Ljava/lang/Object;

    iput-object p5, p0, LU0/n;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LU0/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LU0/n;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/z1;

    iget-object v2, p0, LU0/n;->c:Ljava/lang/Object;

    check-cast v2, Ll3/z1;

    if-eq v1, v2, :cond_0

    iget-object v1, v1, Ll3/z1;->a:Ll3/s;

    sget-object v2, Ll3/B0;->G:Lj3/r0;

    invoke-interface {v1, v2}, Ll3/s;->d(Lj3/r0;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LU0/n;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, LU0/n;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, LU0/n;->f:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v1, v0, Ll3/B0;->D:Lj1/a;

    iget-object v1, v1, Lj1/a;->b:Ljava/lang/Object;

    check-cast v1, Ll3/L0;

    iget-object v1, v1, Ll3/L0;->E:LR0/i;

    iget-object v2, v1, LR0/i;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, LR0/i;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, LR0/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, LR0/i;->c:Ljava/lang/Object;

    check-cast v0, Lj3/r0;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v1, LR0/i;->b:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    iget-object v1, v1, LR0/i;->d:Ljava/lang/Object;

    check-cast v1, Ll3/L0;

    iget-object v1, v1, Ll3/L0;->D:Ll3/J;

    invoke-virtual {v1, v0}, Ll3/J;->c(Lj3/r0;)V

    :cond_5
    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    :try_start_2
    iget-object v0, p0, LU0/n;->b:Ljava/lang/Object;

    check-cast v0, LV0/j;

    iget-object v0, v0, LV0/h;->a:Ljava/lang/Object;

    instance-of v0, v0, LV0/a;

    if-nez v0, :cond_7

    iget-object v0, p0, LU0/n;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LU0/n;->f:Ljava/lang/Object;

    check-cast v1, LU0/o;

    iget-object v1, v1, LU0/o;->c:LT0/j;

    invoke-virtual {v1, v0}, LT0/j;->e(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v1}, LC/a;->d(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, LU0/n;->f:Ljava/lang/Object;

    check-cast v1, LU0/o;

    iget-object v1, v1, LU0/o;->b:LL0/b;

    iget-object v2, p0, LU0/n;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/work/h;

    invoke-virtual {v1, v0, v2}, LL0/b;->f(Ljava/lang/String;Landroidx/work/h;)V

    iget-object v1, p0, LU0/n;->e:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, LU0/n;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/work/h;

    invoke-static {v1, v0, v2}, LS0/a;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/h;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, LU0/n;->e:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_6
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    iget-object v0, p0, LU0/n;->b:Ljava/lang/Object;

    check-cast v0, LV0/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LV0/j;->i(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :goto_4
    iget-object v1, p0, LU0/n;->b:Ljava/lang/Object;

    check-cast v1, LV0/j;

    invoke-virtual {v1, v0}, LV0/j;->j(Ljava/lang/Throwable;)Z

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
