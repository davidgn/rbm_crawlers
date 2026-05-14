.class public Lcom/google/firebase/firestore/remote/GrpcCallProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONNECTIVITY_ATTEMPT_TIMEOUT_MS:I = 0x3a98

.field private static final LOG_TAG:Ljava/lang/String; = "GrpcCallProvider"

.field private static overrideChannelBuilderSupplier:Lcom/google/firebase/firestore/util/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/util/Supplier<",
            "Lj3/W;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private callOptions:Lj3/g;

.field private channelTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lj3/V;",
            ">;"
        }
    .end annotation
.end field

.field private connectivityAttemptTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

.field private final context:Landroid/content/Context;

.field private final databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

.field private final firestoreHeaders:Lj3/e;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/util/AsyncQueue;Landroid/content/Context;Lcom/google/firebase/firestore/core/DatabaseInfo;Lj3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

    iput-object p4, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->firestoreHeaders:Lj3/e;

    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->initChannelTask()V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->lambda$resetChannel$4(Lj3/V;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->lambda$initChannelTask$5(Lj3/V;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->lambda$onConnectivityStateChange$3(Lj3/V;)V

    return-void
.end method

.method private clearConnectivityAttemptTimer()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->connectivityAttemptTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GrpcCallProvider"

    const-string v2, "Clearing the connectivityAttemptTimer"

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->connectivityAttemptTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->connectivityAttemptTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->lambda$onConnectivityStateChange$2(Lj3/V;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->lambda$onConnectivityStateChange$1(Lj3/V;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/h0;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->lambda$createClientCall$0(Lj3/h0;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/google/firebase/firestore/remote/GrpcCallProvider;)Lj3/V;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->lambda$initChannelTask$6()Lj3/V;

    move-result-object p0

    return-object p0
.end method

.method private initChannel(Landroid/content/Context;Lcom/google/firebase/firestore/core/DatabaseInfo;)Lj3/V;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "GrpcCallProvider"

    const-string v2, "Failed to update ssl context: %s"

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    sget-object v0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->overrideChannelBuilderSupplier:Lcom/google/firebase/firestore/util/Supplier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/firebase/firestore/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj3/W;

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/DatabaseInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj3/W;->b(Ljava/lang/String;)Lj3/W;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/DatabaseInfo;->isSslEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v0}, Lj3/W;->d()V

    :cond_1
    move-object p2, v0

    :goto_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0}, Lj3/W;->c(Ljava/util/concurrent/TimeUnit;)V

    new-instance v0, Lk3/c;

    invoke-direct {v0, p2}, Lk3/c;-><init>(Lj3/W;)V

    iput-object p1, v0, Lk3/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lk3/c;->a()Lj3/V;

    move-result-object p1

    return-object p1
.end method

.method private initChannelTask()V
    .locals 2

    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/firestore/remote/i;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/remote/i;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->channelTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private synthetic lambda$createClientCall$0(Lj3/h0;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj3/V;

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->callOptions:Lj3/g;

    invoke-virtual {p2, p1, v0}, Lj3/h;->g(Lj3/h0;Lj3/g;)Lj3/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$initChannelTask$5(Lj3/V;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->onConnectivityStateChange(Lj3/V;)V

    return-void
.end method

.method private lambda$initChannelTask$6()Lj3/V;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->initChannel(Landroid/content/Context;Lcom/google/firebase/firestore/core/DatabaseInfo;)Lj3/V;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v2, Lcom/google/firebase/firestore/remote/g;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v0, v3}, Lcom/google/firebase/firestore/remote/g;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;I)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    sget-object v1, Lj3/g;->i:Lj3/g;

    sget-object v2, Lr3/e;->c:LG3/b;

    sget-object v3, Lr3/b;->b:Lr3/b;

    invoke-virtual {v1, v2, v3}, Lj3/g;->c(LG3/b;Ljava/lang/Object;)Lj3/g;

    move-result-object v1

    const-string v2, "channel"

    invoke-static {v0, v2}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->firestoreHeaders:Lj3/e;

    invoke-static {v1}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v1

    iput-object v2, v1, Lj3/f;->c:Lj3/e;

    new-instance v2, Lj3/g;

    invoke-direct {v2, v1}, Lj3/g;-><init>(Lj3/f;)V

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v2}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v2

    iput-object v1, v2, Lj3/f;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lj3/g;

    invoke-direct {v1, v2}, Lj3/g;-><init>(Lj3/f;)V

    iput-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->callOptions:Lj3/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "GrpcCallProvider"

    const-string v3, "Channel successfully reset."

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private synthetic lambda$onConnectivityStateChange$1(Lj3/V;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GrpcCallProvider"

    const-string v2, "connectivityAttemptTimer elapsed. Resetting the channel."

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->clearConnectivityAttemptTimer()V

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->resetChannel(Lj3/V;)V

    return-void
.end method

.method private synthetic lambda$onConnectivityStateChange$2(Lj3/V;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->onConnectivityStateChange(Lj3/V;)V

    return-void
.end method

.method private synthetic lambda$onConnectivityStateChange$3(Lj3/V;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/remote/g;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/google/firebase/firestore/remote/g;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;I)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$resetChannel$4(Lj3/V;)V
    .locals 0

    invoke-virtual {p1}, Lj3/V;->m()Lj3/V;

    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->initChannelTask()V

    return-void
.end method

.method private onConnectivityStateChange(Lj3/V;)V
    .locals 6

    invoke-virtual {p1}, Lj3/V;->j()Lj3/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current gRPC connectivity state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "GrpcCallProvider"

    invoke-static {v4, v1, v3}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->clearConnectivityAttemptTimer()V

    sget-object v1, Lj3/q;->a:Lj3/q;

    if-ne v0, v1, :cond_0

    const-string v1, "Setting the connectivityAttemptTimer"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    sget-object v2, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->CONNECTIVITY_ATTEMPT_TIMER:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    new-instance v3, Lcom/google/firebase/firestore/remote/g;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/google/firebase/firestore/remote/g;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;I)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAfterDelay(Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JLjava/lang/Runnable;)Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->connectivityAttemptTimer:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/remote/g;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/google/firebase/firestore/remote/g;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;I)V

    invoke-virtual {p1, v0, v1}, Lj3/V;->k(Lj3/q;Lcom/google/firebase/firestore/remote/g;)V

    return-void
.end method

.method private resetChannel(Lj3/V;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/remote/g;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/google/firebase/firestore/remote/g;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;I)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public createClientCall(Lj3/h0;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj3/h0;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lj3/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->channelTask:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/remote/h;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/firestore/remote/h;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/h0;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()V
    .locals 6

    const-string v0, "FirestoreChannel"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->channelTask:Lcom/google/android/gms/tasks/Task;

    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj3/V;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v2}, Lj3/V;->l()Lj3/V;

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lj3/V;->h(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Unable to gracefully shutdown the gRPC ManagedChannel. Will attempt an immediate shutdown."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lj3/V;->m()Lj3/V;

    const-wide/16 v4, 0x3c

    invoke-virtual {v2, v4, v5, v3}, Lj3/V;->h(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Unable to forcefully shutdown the gRPC ManagedChannel."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v2}, Lj3/V;->m()Lj3/V;

    const-string v2, "Interrupted while shutting down the gRPC Managed Channel"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    const-string v2, "Interrupted while retrieving the gRPC Managed Channel"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :goto_1
    const-string v2, "Channel is not initialized, shutdown will just do nothing. Channel initializing run into exception: %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
