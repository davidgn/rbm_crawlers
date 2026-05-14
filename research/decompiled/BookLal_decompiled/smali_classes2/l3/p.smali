.class public final Ll3/p;
.super LU0/c;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lj3/r0;

.field public final synthetic d:Lj3/f0;

.field public final synthetic e:LJ2/e;


# direct methods
.method public constructor <init>(LJ2/e;Lj3/r0;Lj3/f0;)V
    .locals 0

    iput-object p1, p0, Ll3/p;->e:LJ2/e;

    iput-object p2, p0, Ll3/p;->c:Lj3/r0;

    iput-object p3, p0, Ll3/p;->d:Lj3/f0;

    iget-object p1, p1, LJ2/e;->d:Ljava/lang/Object;

    check-cast p1, Ll3/r;

    iget-object p1, p1, Ll3/r;->f:Lj3/u;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, LU0/c;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Ll3/p;->e:LJ2/e;

    iget-object v1, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Ll3/r;

    iget-object v0, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ll3/r;

    iget-object v1, v1, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->b()V

    sget-object v1, Ly3/b;->a:Ly3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Ll3/p;->e()V
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
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Ll3/p;->c:Lj3/r0;

    iget-object v1, p0, Ll3/p;->d:Lj3/f0;

    iget-object v2, p0, Ll3/p;->e:LJ2/e;

    iget-object v2, v2, LJ2/e;->c:Ljava/lang/Object;

    check-cast v2, Lj3/r0;

    if-eqz v2, :cond_0

    new-instance v1, Lj3/f0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v0, v2

    :cond_0
    iget-object v2, p0, Ll3/p;->e:LJ2/e;

    iget-object v2, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, Ll3/r;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ll3/r;->k:Z

    :try_start_0
    iget-object v2, p0, Ll3/p;->e:LJ2/e;

    iget-object v3, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v3, Ll3/r;

    iget-object v2, v2, LJ2/e;->b:Ljava/lang/Object;

    check-cast v2, Lj3/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Lj3/j;->onClose(Lj3/r0;Lj3/f0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ll3/p;->e:LJ2/e;

    iget-object v1, v1, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Ll3/r;

    invoke-virtual {v1}, Ll3/r;->b()V

    iget-object v1, p0, Ll3/p;->e:LJ2/e;

    iget-object v1, v1, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Ll3/r;

    iget-object v1, v1, Ll3/r;->e:LR0/i;

    invoke-virtual {v0}, Lj3/r0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, LR0/i;->c:Ljava/lang/Object;

    check-cast v0, Ll3/w0;

    invoke-interface {v0}, Ll3/w0;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, v1, LR0/i;->d:Ljava/lang/Object;

    check-cast v0, Ll3/w0;

    invoke-interface {v0}, Ll3/w0;->a()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Ll3/p;->e:LJ2/e;

    iget-object v2, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, Ll3/r;

    invoke-virtual {v2}, Ll3/r;->b()V

    iget-object v2, p0, Ll3/p;->e:LJ2/e;

    iget-object v2, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, Ll3/r;

    iget-object v2, v2, Ll3/r;->e:LR0/i;

    invoke-virtual {v0}, Lj3/r0;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, LR0/i;->c:Ljava/lang/Object;

    check-cast v0, Ll3/w0;

    invoke-interface {v0}, Ll3/w0;->a()V

    goto :goto_1

    :cond_2
    iget-object v0, v2, LR0/i;->d:Ljava/lang/Object;

    check-cast v0, Ll3/w0;

    invoke-interface {v0}, Ll3/w0;->a()V

    :goto_1
    throw v1
.end method
