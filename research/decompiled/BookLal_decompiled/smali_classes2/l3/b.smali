.class public abstract Ll3/b;
.super Ll3/J1;
.source "SourceFile"

# interfaces
.implements Ll3/s;


# static fields
.field public static final i:Ljava/util/logging/Logger;


# instance fields
.field public final c:Ll3/R1;

.field public final d:Ll3/Y;

.field public final e:Z

.field public final f:Z

.field public g:Lj3/f0;

.field public volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ll3/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ll3/b;->i:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ld3/a;Ll3/N1;Ll3/R1;Lj3/f0;Lj3/g;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "headers"

    invoke-static {p4, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportTracer"

    invoke-static {p3, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Ll3/b;->c:Ll3/R1;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Ll3/b0;->n:LG3/b;

    invoke-virtual {p5, v0}, Lj3/g;->a(LG3/b;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Ll3/b;->e:Z

    iput-boolean p6, p0, Ll3/b;->f:Z

    if-nez p6, :cond_0

    new-instance p3, Ll3/X0;

    invoke-direct {p3, p0, p1, p2}, Ll3/X0;-><init>(Ll3/b;Ld3/a;Ll3/N1;)V

    iput-object p3, p0, Ll3/b;->d:Ll3/Y;

    iput-object p4, p0, Ll3/b;->g:Lj3/f0;

    goto :goto_0

    :cond_0
    new-instance p1, LC4/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, LC4/g;->e:Ljava/lang/Object;

    const-string p3, "headers"

    invoke-static {p4, p3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p1, LC4/g;->b:Ljava/lang/Object;

    iput-object p2, p1, LC4/g;->c:Ljava/lang/Object;

    iput-object p1, p0, Ll3/b;->d:Ll3/Y;

    :goto_0
    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 1

    iget-object v0, p0, Ll3/b;->d:Ll3/Y;

    invoke-interface {v0, p1}, Ll3/Y;->c(I)V

    return-void
.end method

.method public final d(Lj3/r0;)V
    .locals 4

    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Should not cancel with OK status"

    invoke-static {v0, v2}, LZ2/l;->f(ZLjava/lang/String;)V

    iput-boolean v1, p0, Ll3/b;->h:Z

    move-object v0, p0

    check-cast v0, Lm3/j;

    iget-object v0, v0, Lm3/j;->o:Li1/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ly3/b;->c()V

    :try_start_0
    iget-object v2, v0, Li1/D;->b:Ljava/lang/Object;

    check-cast v2, Lm3/j;

    iget-object v2, v2, Lm3/j;->n:Lm3/i;

    iget-object v2, v2, Lm3/i;->w:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Lm3/j;

    iget-object v0, v0, Lm3/j;->n:Lm3/i;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3}, Lm3/i;->l(Lj3/r0;ZLj3/f0;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ly3/b;->e()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {}, Ly3/b;->e()V

    throw p1
.end method

.method public final e(Lj3/v;)V
    .locals 6

    iget-object v0, p0, Ll3/b;->g:Lj3/f0;

    sget-object v1, Ll3/b0;->c:Lj3/a0;

    invoke-virtual {v0, v1}, Lj3/f0;->a(Lj3/c0;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lj3/v;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p1, p0, Ll3/b;->g:Lj3/f0;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lj3/f0;->f(Lj3/c0;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ll3/u;)V
    .locals 4

    move-object v0, p0

    check-cast v0, Lm3/j;

    iget-object v1, v0, Lm3/j;->n:Lm3/i;

    iget-object v2, v1, Ll3/a;->j:Ll3/u;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Already called setListener"

    invoke-static {v2, v3}, LZ2/l;->m(ZLjava/lang/String;)V

    const-string v2, "listener"

    invoke-static {p1, v2}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v1, Ll3/a;->j:Ll3/u;

    iget-boolean p1, p0, Ll3/b;->f:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Ll3/b;->g:Lj3/f0;

    iget-object v0, v0, Lm3/j;->o:Li1/D;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Li1/D;->u(Lj3/f0;[B)V

    iput-object v1, p0, Ll3/b;->g:Lj3/f0;

    :cond_1
    return-void
.end method

.method public final h(Lj3/x;)V
    .locals 3

    move-object v0, p0

    check-cast v0, Lm3/j;

    iget-object v0, v0, Lm3/j;->n:Lm3/i;

    iget-object v1, v0, Ll3/a;->j:Ll3/u;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Already called start"

    invoke-static {v1, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    const-string v1, "decompressorRegistry"

    invoke-static {p1, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Ll3/a;->k:Lj3/x;

    return-void
.end method

.method public final i()Z
    .locals 1

    move-object v0, p0

    check-cast v0, Lm3/j;

    iget-object v0, v0, Lm3/j;->n:Lm3/i;

    invoke-virtual {v0}, Ll3/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ll3/b;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()V
    .locals 2

    move-object v0, p0

    check-cast v0, Lm3/j;

    iget-object v1, v0, Lm3/j;->n:Lm3/i;

    iget-boolean v1, v1, Ll3/a;->n:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lm3/j;->n:Lm3/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ll3/a;->n:Z

    iget-object v0, p0, Ll3/b;->d:Ll3/Y;

    invoke-interface {v0}, Ll3/Y;->close()V

    :cond_0
    return-void
.end method

.method public final m(I)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lm3/j;

    iget-object v0, v0, Lm3/j;->n:Lm3/i;

    iget-object v0, v0, Ll3/a;->a:Ll3/V0;

    iput p1, v0, Ll3/V0;->b:I

    return-void
.end method

.method public final n(LC4/v;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lm3/j;

    sget-object v1, Lj3/i;->a:Lj3/a;

    iget-object v0, v0, Lm3/j;->p:Lj3/b;

    iget-object v0, v0, Lj3/b;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "remote_addr"

    invoke-virtual {p1, v0, v1}, LC4/v;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final x(Lm3/t;ZZI)V
    .locals 5

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "null frame before EOS"

    invoke-static {v0, v1}, LZ2/l;->f(ZLjava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lm3/j;

    iget-object v0, v0, Lm3/j;->o:Li1/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ly3/b;->c()V

    if-nez p1, :cond_2

    sget-object p1, Lm3/j;->r:LQ4/g;

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lm3/t;->a:LQ4/g;

    iget-wide v1, p1, LQ4/g;->b:J

    long-to-int v1, v1

    if-lez v1, :cond_3

    iget-object v2, v0, Li1/D;->b:Ljava/lang/Object;

    check-cast v2, Lm3/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lm3/j;->n:Lm3/i;

    iget-object v3, v2, Ll3/a;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, v2, Ll3/a;->e:I

    add-int/2addr v4, v1

    iput v4, v2, Ll3/a;->e:I

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    :try_start_1
    iget-object v1, v0, Li1/D;->b:Ljava/lang/Object;

    check-cast v1, Lm3/j;

    iget-object v1, v1, Lm3/j;->n:Lm3/i;

    iget-object v1, v1, Lm3/i;->w:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, v0, Li1/D;->b:Ljava/lang/Object;

    check-cast v2, Lm3/j;

    iget-object v2, v2, Lm3/j;->n:Lm3/i;

    invoke-static {v2, p1, p2, p3}, Lm3/i;->k(Lm3/i;LQ4/g;ZZ)V

    iget-object p1, v0, Li1/D;->b:Ljava/lang/Object;

    check-cast p1, Lm3/j;

    iget-object p1, p1, Ll3/b;->c:Ll3/R1;

    if-nez p4, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Ll3/R1;->b:Ljava/lang/Object;

    check-cast p1, Ll3/P1;

    invoke-virtual {p1}, Ll3/P1;->f()J

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Ly3/b;->e()V

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {}, Ly3/b;->e()V

    throw p1
.end method
