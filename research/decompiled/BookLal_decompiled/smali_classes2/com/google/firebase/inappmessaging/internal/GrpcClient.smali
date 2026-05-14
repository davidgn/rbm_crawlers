.class public Lcom/google/firebase/inappmessaging/internal/GrpcClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/firebase/inappmessaging/internal/injection/scopes/FirebaseAppScope;
.end annotation


# instance fields
.field private final stub:LZ2/k;


# direct methods
.method public constructor <init>(LZ2/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/GrpcClient;->stub:LZ2/k;

    return-void
.end method


# virtual methods
.method public fetchEligibleCampaigns(LZ2/h;)LZ2/j;
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/GrpcClient;->stub:LZ2/k;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, v0, Lh/w;->b:Ljava/lang/Object;

    check-cast v2, Lj3/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_5

    new-instance v3, Lj3/v;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lj3/v;-><init>(J)V

    invoke-static {v2}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v1

    iput-object v3, v1, Lj3/f;->a:Lj3/v;

    new-instance v2, Lj3/g;

    invoke-direct {v2, v1}, Lj3/g;-><init>(Lj3/f;)V

    iget-object v0, v0, Lh/w;->a:Ljava/lang/Object;

    check-cast v0, Lj3/h;

    const-string v1, "channel"

    invoke-static {v0, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LZ2/l;->a:Lj3/h0;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-class v4, LZ2/l;

    monitor-enter v4

    :try_start_0
    sget-object v1, LZ2/l;->a:Lj3/h0;

    if-nez v1, :cond_0

    invoke-static {}, Lj3/h0;->b()LC4/g;

    move-result-object v1

    sget-object v5, Lj3/g0;->a:Lj3/g0;

    iput-object v5, v1, LC4/g;->d:Ljava/lang/Object;

    const-string v5, "google.internal.firebase.inappmessaging.v1.sdkserving.InAppMessagingSdkServing"

    const-string v6, "FetchEligibleCampaigns"

    invoke-static {v5, v6}, Lj3/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, LC4/g;->e:Ljava/lang/Object;

    iput-boolean v3, v1, LC4/g;->a:Z

    invoke-static {}, LZ2/h;->j()LZ2/h;

    move-result-object v5

    sget-object v6, Lq3/c;->a:Lcom/google/protobuf/y;

    new-instance v6, Lq3/b;

    invoke-direct {v6, v5}, Lq3/b;-><init>(Lcom/google/protobuf/K;)V

    iput-object v6, v1, LC4/g;->b:Ljava/lang/Object;

    invoke-static {}, LZ2/j;->g()LZ2/j;

    move-result-object v5

    new-instance v6, Lq3/b;

    invoke-direct {v6, v5}, Lq3/b;-><init>(Lcom/google/protobuf/K;)V

    iput-object v6, v1, LC4/g;->c:Ljava/lang/Object;

    invoke-virtual {v1}, LC4/g;->g()Lj3/h0;

    move-result-object v1

    sput-object v1, LZ2/l;->a:Lj3/h0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v4

    goto :goto_2

    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    sget-object v4, Lr3/e;->a:Ljava/util/logging/Logger;

    new-instance v4, Lr3/c;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sget-object v5, Lr3/b;->a:Lr3/b;

    sget-object v6, Lr3/e;->c:LG3/b;

    invoke-virtual {v2, v6, v5}, Lj3/g;->c(LG3/b;Ljava/lang/Object;)Lj3/g;

    move-result-object v2

    invoke-static {v2}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v2

    iput-object v4, v2, Lj3/f;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Lj3/g;

    invoke-direct {v5, v2}, Lj3/g;-><init>(Lj3/f;)V

    invoke-virtual {v0, v1, v5}, Lj3/h;->g(Lj3/h0;Lj3/g;)Lj3/k;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v0, p1}, Lr3/e;->b(Lj3/k;LZ2/h;)Lr3/a;

    move-result-object p1

    :goto_3
    invoke-virtual {p1}, LN2/m;->isDone()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_2

    :try_start_2
    invoke-virtual {v4}, Lr3/c;->a()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    move v3, v2

    goto :goto_6

    :catch_0
    move-exception p1

    move v3, v2

    goto :goto_4

    :catch_1
    move-exception p1

    move v3, v2

    goto :goto_5

    :catch_2
    move-exception v2

    :try_start_3
    const-string v5, "Thread interrupted"

    invoke-virtual {v0, v5, v2}, Lj3/k;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v2, v3

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception p1

    goto :goto_5

    :cond_2
    :try_start_4
    invoke-virtual {v4}, Lr3/c;->shutdown()V

    invoke-static {p1}, Lr3/e;->c(Lr3/a;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    check-cast p1, LZ2/j;

    return-object p1

    :goto_4
    :try_start_5
    invoke-static {v0, p1}, Lr3/e;->a(Lj3/k;Ljava/lang/Throwable;)V

    throw v1

    :goto_5
    invoke-static {v0, p1}, Lr3/e;->a(Lj3/k;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_6
    if-eqz v3, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw p1

    :cond_5
    sget-object p1, Lj3/v;->d:Lj3/n;

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "units"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
