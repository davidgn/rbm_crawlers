.class public final LD2/f;
.super LE2/g;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LE2/k;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LD2/f;->b:I

    .line 2
    iput-object p1, p0, LD2/f;->d:Ljava/lang/Object;

    iput-object p2, p0, LD2/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, LE2/g;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, LD2/f;->b:I

    iput-object p1, p0, LD2/f;->d:Ljava/lang/Object;

    iput-object p3, p0, LD2/f;->c:Ljava/lang/Object;

    invoke-direct {p0, p2}, LE2/g;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    const-string v0, "PlayCore"

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget-object v3, p0, LD2/f;->c:Ljava/lang/Object;

    iget-object v4, p0, LD2/f;->d:Ljava/lang/Object;

    iget v5, p0, LD2/f;->b:I

    packed-switch v5, :pswitch_data_0

    check-cast v4, LE2/k;

    iget-object v5, v4, LE2/k;->b:Ljava/lang/Object;

    check-cast v5, LE2/l;

    sget v6, LE2/d;->a:I

    check-cast v3, Landroid/os/IBinder;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const-string v6, "com.google.android.play.core.inappreview.protocol.IInAppReviewService"

    invoke-interface {v3, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v6

    instance-of v7, v6, LE2/e;

    if-eqz v7, :cond_1

    move-object v3, v6

    check-cast v3, LE2/e;

    goto :goto_0

    :cond_1
    new-instance v6, LE2/c;

    invoke-direct {v6, v3}, LE2/c;-><init>(Landroid/os/IBinder;)V

    move-object v3, v6

    :goto_0
    check-cast v3, LE2/e;

    iput-object v3, v5, LE2/l;->m:LE2/e;

    iget-object v3, v4, LE2/k;->b:Ljava/lang/Object;

    check-cast v3, LE2/l;

    iget-object v4, v3, LE2/l;->b:LE2/f;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "linkToDeath"

    invoke-virtual {v4, v6, v5}, LE2/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v4, v3, LE2/l;->m:LE2/e;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v3, LE2/l;->j:LE2/i;

    invoke-interface {v4, v5, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, v3, LE2/l;->b:LE2/f;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v6, LE2/f;->a:Ljava/lang/String;

    const-string v6, "linkToDeath failed"

    invoke-static {v1, v6, v5}, LE2/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iput-boolean v2, v3, LE2/l;->g:Z

    iget-object v0, v3, LE2/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_3
    iget-object v0, v3, LE2/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :pswitch_0
    check-cast v4, LE2/l;

    iget-object v0, v4, LE2/l;->m:LE2/e;

    iget-object v1, v4, LE2/l;->d:Ljava/util/ArrayList;

    check-cast v3, LD2/f;

    iget-object v5, v4, LE2/l;->b:LE2/f;

    if-nez v0, :cond_6

    iget-boolean v0, v4, LE2/l;->g:Z

    if-nez v0, :cond_6

    const-string v0, "Initiate binding to the service."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, LE2/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LE2/k;

    invoke-direct {v0, v4, v2}, LE2/k;-><init>(Ljava/lang/Object;I)V

    iput-object v0, v4, LE2/l;->l:LE2/k;

    const/4 v3, 0x1

    iput-boolean v3, v4, LE2/l;->g:Z

    iget-object v6, v4, LE2/l;->a:Landroid/content/Context;

    iget-object v7, v4, LE2/l;->h:Landroid/content/Intent;

    invoke-virtual {v6, v7, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_8

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Failed to bind to the service."

    invoke-virtual {v5, v3, v0}, LE2/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, v4, LE2/l;->g:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE2/g;

    new-instance v4, LB0/c;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, LB0/c;-><init>(Ljava/lang/String;I)V

    iget-object v2, v2, LE2/g;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :cond_6
    iget-boolean v0, v4, LE2/l;->g:Z

    if-eqz v0, :cond_7

    const-string v0, "Waiting to bind to the service."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v2}, LE2/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, LE2/g;->run()V

    :cond_8
    :goto_4
    return-void

    :pswitch_1
    check-cast v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast v4, LD2/h;

    :try_start_1
    iget-object v2, v4, LD2/h;->a:LE2/l;

    iget-object v2, v2, LE2/l;->m:LE2/e;

    iget-object v5, v4, LD2/h;->b:Ljava/lang/String;

    invoke-static {}, LD2/i;->a()Landroid/os/Bundle;

    move-result-object v6

    new-instance v7, LD2/g;

    invoke-direct {v7, v4, v3}, LD2/g;-><init>(LD2/h;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v2, v5, v6, v7}, LE2/e;->a(Ljava/lang/String;Landroid/os/Bundle;LD2/g;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    sget-object v5, LD2/h;->c:LE2/f;

    iget-object v4, v4, LD2/h;->b:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v5, LE2/f;->a:Ljava/lang/String;

    const-string v5, "error requesting in-app review for %s"

    invoke-static {v1, v5, v4}, LE2/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
