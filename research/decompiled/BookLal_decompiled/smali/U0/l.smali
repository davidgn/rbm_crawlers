.class public final LU0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LV0/j;

.field public final synthetic c:LU0/m;


# direct methods
.method public synthetic constructor <init>(LU0/m;LV0/j;I)V
    .locals 0

    iput p3, p0, LU0/l;->a:I

    iput-object p1, p0, LU0/l;->c:LU0/m;

    iput-object p2, p0, LU0/l;->b:LV0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, LU0/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LU0/l;->c:LU0/m;

    const-string v1, "Updating notification for "

    const-string v2, "Worker was marked important ("

    :try_start_0
    iget-object v3, p0, LU0/l;->b:LV0/j;

    invoke-virtual {v3}, LV0/h;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroidx/work/h;

    if-eqz v8, :cond_0

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    sget-object v3, LU0/m;->l:Ljava/lang/String;

    iget-object v4, v0, LU0/m;->c:LT0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, v0, LU0/m;->d:Landroidx/work/ListenableWorker;

    :try_start_1
    iget-object v4, v4, LT0/i;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v1, v4}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroidx/work/ListenableWorker;->setRunInForeground(Z)V

    iget-object v1, v0, LU0/m;->a:LV0/j;

    iget-object v2, v0, LU0/m;->e:LU0/o;

    iget-object v9, v0, LU0/m;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LV0/j;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v11, LU0/n;

    const/4 v10, 0x0

    move-object v4, v11

    move-object v5, v2

    move-object v6, v3

    invoke-direct/range {v4 .. v10}, LU0/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v2, v2, LU0/o;->a:LJ2/e;

    invoke-virtual {v2, v11}, LJ2/e;->o(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, LV0/j;->k(LN2/o;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, LU0/m;->c:LT0/i;

    iget-object v1, v1, LT0/i;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") but did not provide ForegroundInfo"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, v0, LU0/m;->a:LV0/j;

    invoke-virtual {v0, v1}, LV0/j;->j(Ljava/lang/Throwable;)Z

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, LU0/l;->c:LU0/m;

    iget-object v0, v0, LU0/m;->d:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getForegroundInfoAsync()LN2/o;

    move-result-object v0

    iget-object v1, p0, LU0/l;->b:LV0/j;

    invoke-virtual {v1, v0}, LV0/j;->k(LN2/o;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
