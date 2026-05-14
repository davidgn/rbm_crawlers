.class public abstract Lr3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Z

.field public static final c:LG3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lr3/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lr3/e;->a:Ljava/util/logging/Logger;

    const-string v0, "GRPC_CLIENT_CALL_REJECT_RUNNABLE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ2/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lr3/e;->b:Z

    new-instance v0, LG3/b;

    const-string v1, "internal-stub-type"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr3/e;->c:LG3/b;

    return-void
.end method

.method public static a(Lj3/k;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lj3/k;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "RuntimeException encountered while closing call"

    sget-object v2, Lr3/e;->a:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
.end method

.method public static b(Lj3/k;LZ2/h;)Lr3/a;
    .locals 3

    new-instance v0, Lr3/a;

    invoke-direct {v0, p0}, Lr3/a;-><init>(Lj3/k;)V

    new-instance v1, Lr3/d;

    invoke-direct {v1, v0}, Lr3/d;-><init>(Lr3/a;)V

    new-instance v2, Lj3/f0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1, v2}, Lj3/k;->start(Lj3/j;Lj3/f0;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lj3/k;->request(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lj3/k;->sendMessage(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lj3/k;->halfClose()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p0, p1}, Lr3/e;->a(Lj3/k;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    invoke-static {p0, p1}, Lr3/e;->a(Lj3/k;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c(Lr3/a;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, LN2/m;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v0, "t"

    invoke-static {p0, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Lj3/s0;

    if-nez v1, :cond_1

    instance-of v1, v0, Lj3/t0;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lj3/t0;

    new-instance p0, Lj3/t0;

    iget-object v1, v0, Lj3/t0;->a:Lj3/r0;

    iget-object v0, v0, Lj3/t0;->b:Lj3/f0;

    invoke-direct {p0, v1, v0}, Lj3/t0;-><init>(Lj3/r0;Lj3/f0;)V

    goto :goto_1

    :cond_1
    check-cast v0, Lj3/s0;

    new-instance p0, Lj3/t0;

    iget-object v0, v0, Lj3/s0;->a:Lj3/r0;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lj3/t0;-><init>(Lj3/r0;Lj3/f0;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lj3/r0;->g:Lj3/r0;

    const-string v1, "unexpected exception"

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p0

    invoke-virtual {p0}, Lj3/r0;->a()Lj3/t0;

    move-result-object p0

    :goto_1
    throw p0

    :catch_1
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    sget-object v0, Lj3/r0;->f:Lj3/r0;

    const-string v1, "Thread interrupted"

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p0

    invoke-virtual {p0}, Lj3/r0;->a()Lj3/t0;

    move-result-object p0

    throw p0
.end method
