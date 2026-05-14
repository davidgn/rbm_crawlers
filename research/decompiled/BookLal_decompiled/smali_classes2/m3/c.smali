.class public final Lm3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ4/w;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LQ4/g;

.field public final c:Ll3/G1;

.field public final d:Lm3/n;

.field public final e:I

.field public f:Z

.field public l:Z

.field public m:Z

.field public n:LQ4/b;

.field public o:Ljava/net/Socket;

.field public p:Z

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(Ll3/G1;Lm3/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lm3/c;->a:Ljava/lang/Object;

    new-instance v0, LQ4/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lm3/c;->b:LQ4/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm3/c;->f:Z

    iput-boolean v0, p0, Lm3/c;->l:Z

    iput-boolean v0, p0, Lm3/c;->m:Z

    const-string v0, "executor"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lm3/c;->c:Ll3/G1;

    iput-object p2, p0, Lm3/c;->d:Lm3/n;

    const/16 p1, 0x2710

    iput p1, p0, Lm3/c;->e:I

    return-void
.end method


# virtual methods
.method public final a()LQ4/A;
    .locals 1

    sget-object v0, LQ4/A;->d:LQ4/z;

    return-object v0
.end method

.method public final b(LQ4/b;Ljava/net/Socket;)V
    .locals 2

    iget-object v0, p0, Lm3/c;->n:LQ4/b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "AsyncSink\'s becomeConnected should only be called once."

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iput-object p1, p0, Lm3/c;->n:LQ4/b;

    iput-object p2, p0, Lm3/c;->o:Ljava/net/Socket;

    return-void
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lm3/c;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm3/c;->m:Z

    new-instance v0, LA2/h;

    const/16 v1, 0x1c

    invoke-direct {v0, p0, v1}, LA2/h;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Lm3/c;->c:Ll3/G1;

    invoke-virtual {v1, v0}, Ll3/G1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final flush()V
    .locals 3

    iget-boolean v0, p0, Lm3/c;->m:Z

    if-nez v0, :cond_1

    invoke-static {}, Ly3/b;->c()V

    :try_start_0
    iget-object v0, p0, Lm3/c;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lm3/c;->l:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ly3/b;->e()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lm3/c;->l:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lm3/c;->c:Ll3/G1;

    new-instance v1, Lm3/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lm3/a;-><init>(Lm3/c;I)V

    invoke-virtual {v0, v1}, Ll3/G1;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Ly3/b;->e()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_1

    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    invoke-static {}, Ly3/b;->e()V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o(LQ4/g;J)V
    .locals 6

    iget-boolean v0, p0, Lm3/c;->m:Z

    if-nez v0, :cond_4

    invoke-static {}, Ly3/b;->c()V

    :try_start_0
    iget-object v0, p0, Lm3/c;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lm3/c;->b:LQ4/g;

    invoke-virtual {v1, p1, p2, p3}, LQ4/g;->o(LQ4/g;J)V

    iget p1, p0, Lm3/c;->r:I

    iget p2, p0, Lm3/c;->q:I

    add-int/2addr p1, p2

    iput p1, p0, Lm3/c;->r:I

    const/4 p2, 0x0

    iput p2, p0, Lm3/c;->q:I

    iget-boolean p3, p0, Lm3/c;->p:Z

    const/4 v1, 0x1

    if-nez p3, :cond_0

    iget p3, p0, Lm3/c;->e:I

    if-le p1, p3, :cond_0

    iput-boolean v1, p0, Lm3/c;->p:Z

    move p2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-boolean p1, p0, Lm3/c;->f:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lm3/c;->l:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lm3/c;->b:LQ4/g;

    invoke-virtual {p1}, LQ4/g;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_1

    goto :goto_2

    :cond_1
    iput-boolean v1, p0, Lm3/c;->f:Z

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    :try_start_2
    iget-object p1, p0, Lm3/c;->o:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lm3/c;->d:Lm3/n;

    invoke-virtual {p2, p1}, Lm3/n;->o(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    invoke-static {}, Ly3/b;->e()V

    return-void

    :cond_2
    :try_start_4
    iget-object p1, p0, Lm3/c;->c:Ll3/G1;

    new-instance p2, Lm3/a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lm3/a;-><init>(Lm3/c;I)V

    invoke-virtual {p1, p2}, Ll3/G1;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Ly3/b;->e()V

    return-void

    :cond_3
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Ly3/b;->e()V

    return-void

    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_4
    invoke-static {}, Ly3/b;->e()V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
