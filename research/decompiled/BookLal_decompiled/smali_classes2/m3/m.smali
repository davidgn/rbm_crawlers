.class public final Lm3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lj3/G;

.field public final b:Lo3/h;

.field public c:Z

.field public final synthetic d:Lm3/n;


# direct methods
.method public constructor <init>(Lm3/n;Lo3/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/m;->d:Lm3/n;

    new-instance p1, Lj3/G;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {p1, v0}, Lj3/G;-><init>(Ljava/util/logging/Level;)V

    iput-object p1, p0, Lm3/m;->a:Lj3/G;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm3/m;->c:Z

    iput-object p2, p0, Lm3/m;->b:Lo3/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "OkHttpClientTransport"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lm3/m;->b:Lo3/h;

    invoke-virtual {v2, p0}, Lo3/h;->b(Lm3/m;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lm3/m;->d:Lm3/n;

    iget-object v2, v2, Lm3/n;->F:Ll3/u0;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ll3/u0;->a()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lm3/m;->d:Lm3/n;

    iget-object v2, v2, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lm3/m;->d:Lm3/n;

    iget-object v3, v3, Lm3/n;->v:Lj3/r0;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    :try_start_2
    sget-object v2, Lj3/r0;->m:Lj3/r0;

    const-string v3, "End of stream or IOException"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    :cond_2
    iget-object v2, p0, Lm3/m;->d:Lm3/n;

    sget-object v4, Lo3/a;->d:Lo3/a;

    invoke-virtual {v2, v1, v4, v3}, Lm3/n;->r(ILo3/a;Lj3/r0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lm3/m;->b:Lo3/h;

    invoke-virtual {v1}, Lo3/h;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lm3/n;->Q:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Exception closing frame reader"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, p0, Lm3/m;->d:Lm3/n;

    :goto_2
    iget-object v1, v1, Lm3/n;->h:Lj0/d;

    invoke-virtual {v1}, Lj0/d;->g()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    iget-object v3, p0, Lm3/m;->d:Lm3/n;

    sget-object v4, Lo3/a;->c:Lo3/a;

    sget-object v5, Lj3/r0;->l:Lj3/r0;

    const-string v6, "error in frame handler"

    invoke-virtual {v5, v6}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v5

    invoke-virtual {v5, v2}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object v2

    sget-object v5, Lm3/n;->P:Ljava/util/Map;

    invoke-virtual {v3, v1, v4, v2}, Lm3/n;->r(ILo3/a;Lj3/r0;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v1, p0, Lm3/m;->b:Lo3/h;

    invoke-virtual {v1}, Lo3/h;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    sget-object v2, Lm3/n;->Q:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Exception closing frame reader"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    iget-object v1, p0, Lm3/m;->d:Lm3/n;

    goto :goto_2

    :goto_5
    return-void

    :catchall_2
    move-exception v1

    :try_start_8
    iget-object v2, p0, Lm3/m;->b:Lo3/h;

    invoke-virtual {v2}, Lo3/h;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    sget-object v3, Lm3/n;->Q:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "Exception closing frame reader"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    iget-object v2, p0, Lm3/m;->d:Lm3/n;

    iget-object v2, v2, Lm3/n;->h:Lj0/d;

    invoke-virtual {v2}, Lj0/d;->g()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method
