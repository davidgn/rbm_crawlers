.class public final synthetic LX1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LX1/c;LS1/j;LD4/a;LS1/i;)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    iput p3, p0, LX1/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/a;->b:Ljava/lang/Object;

    iput-object p2, p0, LX1/a;->c:Ljava/lang/Object;

    iput-object p4, p0, LX1/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, LX1/a;->a:I

    iput-object p1, p0, LX1/a;->b:Ljava/lang/Object;

    iput-object p2, p0, LX1/a;->c:Ljava/lang/Object;

    iput-object p3, p0, LX1/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, LX1/a;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, LX1/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, LX1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Callable;

    iget-object v2, p0, LX1/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->c(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LX1/a;->c:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Throwable;

    iget-object v1, p0, LX1/a;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Semaphore;

    iget-object v2, p0, LX1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->b(Ljava/lang/Runnable;[Ljava/lang/Throwable;Ljava/util/concurrent/Semaphore;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LX1/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/bundle/BundleReader;

    iget-object v1, p0, LX1/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/LoadBundleTask;

    iget-object v2, p0, LX1/a;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/firestore/core/FirestoreClient;->c(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/bundle/BundleReader;Lcom/google/firebase/firestore/LoadBundleTask;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LX1/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, LX1/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/core/FirestoreClient;

    iget-object v2, p0, LX1/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->j(Lcom/google/firebase/firestore/core/FirestoreClient;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LX1/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, LX1/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/core/FirestoreClient;

    iget-object v2, p0, LX1/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->f(Lcom/google/firebase/firestore/core/FirestoreClient;Ljava/util/List;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LX1/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    iget-object v1, p0, LX1/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/core/AsyncEventListener;

    iget-object v2, p0, LX1/a;->c:Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/core/AsyncEventListener;->a(Lcom/google/firebase/firestore/core/AsyncEventListener;Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LX1/a;->b:Ljava/lang/Object;

    check-cast v0, LL0/f;

    iget-object v1, p0, LX1/a;->c:Ljava/lang/Object;

    check-cast v1, LS4/b;

    iget-object v2, p0, LX1/a;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, LL0/f;->a:Landroid/content/Context;

    invoke-static {v0}, LL4/l;->q(Landroid/content/Context;)Landroidx/emoji2/text/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroidx/emoji2/text/g;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/emoji2/text/i;

    check-cast v3, Landroidx/emoji2/text/n;

    iget-object v4, v3, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v2, v3, Landroidx/emoji2/text/n;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v0, Landroidx/emoji2/text/g;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/i;

    new-instance v3, Landroidx/emoji2/text/k;

    invoke-direct {v3, v1, v2}, Landroidx/emoji2/text/k;-><init>(LS4/b;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v3}, Landroidx/emoji2/text/i;->a(LS4/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-virtual {v1, v0}, LS4/b;->x(Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_1
    return-void

    :pswitch_6
    sget v1, Lcom/booklal/booklal/SearchPage;->K:I

    iget-object v1, p0, LX1/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/SearchPage;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/booklal/booklal/SearchPage;->K:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, LX1/a;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v2, v4, :cond_1

    sget v2, Lcom/booklal/booklal/SearchPage;->K:I

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x7

    if-ge v2, v4, :cond_1

    sput v2, Lcom/booklal/booklal/SearchPage;->K:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/booklal/booklal/SearchPage;->L:Ljava/lang/String;

    iget-object v0, v1, Lcom/booklal/booklal/SearchPage;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/booklal/booklal/SearchPage;->F:Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object v0, p0, LX1/a;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v3}, Lcom/booklal/booklal/SearchPage;->j(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_1
    iget-object v2, v1, Lcom/booklal/booklal/SearchPage;->v:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v1, Lcom/booklal/booklal/SearchPage;->E:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    sput v0, Lcom/booklal/booklal/SearchPage;->K:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/booklal/booklal/SearchPage;->L:Ljava/lang/String;

    :cond_2
    :goto_2
    return-void

    :pswitch_7
    iget-object v1, p0, LX1/a;->c:Ljava/lang/Object;

    check-cast v1, LS1/j;

    iget-object v2, v1, LS1/j;->a:Ljava/lang/String;

    iget-object v3, p0, LX1/a;->d:Ljava/lang/Object;

    check-cast v3, LS1/i;

    iget-object v4, p0, LX1/a;->b:Ljava/lang/Object;

    check-cast v4, LX1/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, LX1/c;->f:Ljava/util/logging/Logger;

    const-string v6, "Transport backend \'"

    :try_start_5
    iget-object v7, v4, LX1/c;->c:LT1/f;

    invoke-virtual {v7, v2}, LT1/f;->a(Ljava/lang/String;)LT1/h;

    move-result-object v7

    if-nez v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    check-cast v7, LQ1/e;

    invoke-virtual {v7, v3}, LQ1/e;->a(LS1/i;)LS1/i;

    move-result-object v2

    iget-object v3, v4, LX1/c;->e:La2/c;

    new-instance v6, LX1/b;

    invoke-direct {v6, v4, v1, v2, v0}, LX1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast v3, LZ1/h;

    invoke-virtual {v3, v6}, LZ1/h;->m(La2/b;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error scheduling event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
