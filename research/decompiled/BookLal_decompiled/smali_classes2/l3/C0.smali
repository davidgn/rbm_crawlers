.class public final Ll3/C0;
.super Lj3/A;
.source "SourceFile"


# instance fields
.field public final a:Lj3/H;

.field public final b:Ll3/F0;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lj3/h0;

.field public final e:Lj3/u;

.field public f:Lj3/g;

.field public g:Lj3/k;


# direct methods
.method public constructor <init>(Lj3/H;Ll3/F0;Ljava/util/concurrent/Executor;Lj3/h0;Lj3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/C0;->a:Lj3/H;

    iput-object p2, p0, Ll3/C0;->b:Ll3/F0;

    iput-object p4, p0, Ll3/C0;->d:Lj3/h0;

    iget-object p1, p5, Lj3/g;->b:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    iput-object p3, p0, Ll3/C0;->c:Ljava/util/concurrent/Executor;

    invoke-static {p5}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object p1

    iput-object p3, p1, Lj3/f;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lj3/g;

    invoke-direct {p2, p1}, Lj3/g;-><init>(Lj3/f;)V

    iput-object p2, p0, Ll3/C0;->f:Lj3/g;

    invoke-static {}, Lj3/u;->b()Lj3/u;

    move-result-object p1

    iput-object p1, p0, Ll3/C0;->e:Lj3/u;

    return-void
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ll3/C0;->g:Lj3/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lj3/k;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final delegate()Lj3/k;
    .locals 1

    iget-object v0, p0, Ll3/C0;->g:Lj3/k;

    return-object v0
.end method

.method public final start(Lj3/j;Lj3/f0;)V
    .locals 4

    iget-object v0, p0, Ll3/C0;->f:Lj3/g;

    const-string v1, "method"

    iget-object v2, p0, Ll3/C0;->d:Lj3/h0;

    invoke-static {v2, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    invoke-static {p2, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callOptions"

    invoke-static {v0, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll3/C0;->a:Lj3/H;

    invoke-virtual {v0}, Lj3/H;->a()Lj3/G;

    move-result-object v0

    iget-object v1, v0, Lj3/G;->b:Ljava/lang/Object;

    check-cast v1, Lj3/r0;

    invoke-virtual {v1}, Lj3/r0;->f()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ll3/b0;->h(Lj3/r0;)Lj3/r0;

    move-result-object p2

    new-instance v0, Ll3/F;

    invoke-direct {v0, p0, p1, p2}, Ll3/F;-><init>(Ll3/C0;Lj3/j;Lj3/r0;)V

    iget-object p1, p0, Ll3/C0;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p1, Ll3/L0;->k0:Ll3/E;

    iput-object p1, p0, Ll3/C0;->g:Lj3/k;

    return-void

    :cond_0
    iget-object v0, v0, Lj3/G;->c:Ljava/lang/Object;

    check-cast v0, Ll3/R0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Ll3/R0;->b:Ljava/util/Map;

    iget-object v3, v2, Lj3/h0;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/P0;

    if-nez v1, :cond_1

    iget-object v1, v0, Ll3/R0;->c:Ljava/util/Map;

    iget-object v3, v2, Lj3/h0;->c:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/P0;

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, Ll3/R0;->a:Ll3/P0;

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Ll3/C0;->f:Lj3/g;

    sget-object v3, Ll3/P0;->g:LG3/b;

    invoke-virtual {v0, v3, v1}, Lj3/g;->c(LG3/b;Ljava/lang/Object;)Lj3/g;

    move-result-object v0

    iput-object v0, p0, Ll3/C0;->f:Lj3/g;

    :cond_3
    iget-object v0, p0, Ll3/C0;->f:Lj3/g;

    iget-object v1, p0, Ll3/C0;->b:Ll3/F0;

    invoke-virtual {v1, v2, v0}, Ll3/F0;->g(Lj3/h0;Lj3/g;)Lj3/k;

    move-result-object v0

    iput-object v0, p0, Ll3/C0;->g:Lj3/k;

    invoke-virtual {v0, p1, p2}, Lj3/k;->start(Lj3/j;Lj3/f0;)V

    return-void
.end method
