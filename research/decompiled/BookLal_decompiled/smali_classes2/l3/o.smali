.class public final Ll3/o;
.super LU0/c;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:LJ2/e;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LJ2/e;Lj1/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll3/o;->c:I

    .line 5
    iput-object p1, p0, Ll3/o;->d:LJ2/e;

    iput-object p2, p0, Ll3/o;->e:Ljava/lang/Object;

    .line 6
    iget-object p1, p1, LJ2/e;->d:Ljava/lang/Object;

    check-cast p1, Ll3/r;

    .line 7
    iget-object p1, p1, Ll3/r;->f:Lj3/u;

    const/4 p2, 0x1

    .line 8
    invoke-direct {p0, p1, p2}, LU0/c;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(LJ2/e;Lj3/f0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll3/o;->c:I

    .line 1
    iput-object p1, p0, Ll3/o;->d:LJ2/e;

    iput-object p2, p0, Ll3/o;->e:Ljava/lang/Object;

    .line 2
    iget-object p1, p1, LJ2/e;->d:Ljava/lang/Object;

    check-cast p1, Ll3/r;

    .line 3
    iget-object p1, p1, Ll3/r;->f:Lj3/u;

    const/4 p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, LU0/c;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget v0, p0, Ll3/o;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/o;->d:LJ2/e;

    iget-object v1, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Ll3/r;

    iget-object v0, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ll3/r;

    iget-object v1, v1, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->b()V

    sget-object v1, Ly3/b;->a:Ly3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Ll3/o;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->d()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v0, v0, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->d()V

    throw v1

    :pswitch_0
    iget-object v0, p0, Ll3/o;->d:LJ2/e;

    iget-object v1, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Ll3/r;

    iget-object v2, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, Ll3/r;

    iget-object v1, v1, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->b()V

    sget-object v1, Ly3/b;->a:Ly3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v1, v0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v1, Lj3/r0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, v0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Lj3/j;

    iget-object v3, p0, Ll3/o;->e:Ljava/lang/Object;

    check-cast v3, Lj3/f0;

    invoke-virtual {v1, v3}, Lj3/j;->onHeaders(Lj3/f0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    sget-object v3, Lj3/r0;->f:Lj3/r0;

    invoke-virtual {v3, v1}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object v1

    const-string v3, "Failed to read headers"

    invoke-virtual {v1, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v1

    iput-object v1, v0, LJ2/e;->c:Ljava/lang/Object;

    iget-object v0, v2, Ll3/r;->j:Ll3/s;

    invoke-interface {v0, v1}, Ll3/s;->d(Lj3/r0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    iget-object v0, v2, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->d()V

    return-void

    :catchall_2
    move-exception v0

    iget-object v1, v2, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->d()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e()V
    .locals 6

    iget-object v0, p0, Ll3/o;->d:LJ2/e;

    iget-object v1, v0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v1, Lj3/r0;

    iget-object v2, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, Ll3/r;

    iget-object v3, p0, Ll3/o;->e:Ljava/lang/Object;

    check-cast v3, Lj1/a;

    if-eqz v1, :cond_1

    sget-object v0, Ll3/b0;->a:Ljava/util/logging/Logger;

    :goto_0
    invoke-virtual {v3}, Lj1/a;->t()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ll3/b0;->b(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Lj1/a;->t()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v4, v0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v4, Lj3/j;

    iget-object v5, v2, Ll3/r;->a:Lj3/h0;

    invoke-virtual {v5, v1}, Lj3/h0;->c(Ljava/io/InputStream;)Lcom/google/protobuf/t0;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj3/j;->onMessage(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-static {v1}, Ll3/b0;->b(Ljava/io/Closeable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    sget-object v4, Ll3/b0;->a:Ljava/util/logging/Logger;

    :goto_3
    invoke-virtual {v3}, Lj1/a;->t()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Ll3/b0;->b(Ljava/io/Closeable;)V

    goto :goto_3

    :cond_2
    sget-object v3, Lj3/r0;->f:Lj3/r0;

    invoke-virtual {v3, v1}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object v1

    const-string v3, "Failed to read message."

    invoke-virtual {v1, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v1

    iput-object v1, v0, LJ2/e;->c:Ljava/lang/Object;

    iget-object v0, v2, Ll3/r;->j:Ll3/s;

    invoke-interface {v0, v1}, Ll3/s;->d(Lj3/r0;)V

    :cond_3
    return-void
.end method
