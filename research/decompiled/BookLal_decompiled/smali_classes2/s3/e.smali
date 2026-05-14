.class public final Ls3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ls3/i;

.field public volatile b:Lj3/G;

.field public c:Lj3/G;

.field public d:Ljava/lang/Long;

.field public e:I

.field public final f:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Ls3/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj3/G;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lj3/G;-><init>(I)V

    iput-object v0, p0, Ls3/e;->b:Lj3/G;

    new-instance v0, Lj3/G;

    invoke-direct {v0, v1}, Lj3/G;-><init>(I)V

    iput-object v0, p0, Ls3/e;->c:Lj3/G;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ls3/e;->f:Ljava/util/HashSet;

    iput-object p1, p0, Ls3/e;->a:Ls3/i;

    return-void
.end method


# virtual methods
.method public final a(Ls3/k;)V
    .locals 4

    invoke-virtual {p0}, Ls3/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Ls3/k;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Ls3/k;->c:Z

    iget-object v1, p1, Ls3/k;->e:Lj3/Q;

    sget-object v2, Lj3/r0;->m:Lj3/r0;

    invoke-virtual {v2}, Lj3/r0;->f()Z

    move-result v3

    xor-int/2addr v0, v3

    const-string v3, "The error status must not be OK"

    invoke-static {v0, v3}, LZ2/l;->f(ZLjava/lang/String;)V

    new-instance v0, Lj3/r;

    sget-object v3, Lj3/q;->c:Lj3/q;

    invoke-direct {v0, v3, v2}, Lj3/r;-><init>(Lj3/q;Lj3/r0;)V

    invoke-interface {v1, v0}, Lj3/Q;->a(Lj3/r;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ls3/e;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Ls3/k;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Ls3/k;->c:Z

    iget-object v0, p1, Ls3/k;->d:Lj3/r;

    if-eqz v0, :cond_1

    iget-object v1, p1, Ls3/k;->e:Lj3/Q;

    invoke-interface {v1, v0}, Lj3/Q;->a(Lj3/r;)V

    :cond_1
    :goto_0
    iput-object p0, p1, Ls3/k;->b:Ls3/e;

    iget-object v0, p0, Ls3/e;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(J)V
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ls3/e;->d:Ljava/lang/Long;

    iget p1, p0, Ls3/e;->e:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Ls3/e;->e:I

    iget-object p1, p0, Ls3/e;->f:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/k;

    iput-boolean p2, v0, Ls3/k;->c:Z

    iget-object v0, v0, Ls3/k;->e:Lj3/Q;

    sget-object v1, Lj3/r0;->m:Lj3/r0;

    invoke-virtual {v1}, Lj3/r0;->f()Z

    move-result v2

    xor-int/2addr v2, p2

    const-string v3, "The error status must not be OK"

    invoke-static {v2, v3}, LZ2/l;->f(ZLjava/lang/String;)V

    new-instance v2, Lj3/r;

    sget-object v3, Lj3/q;->c:Lj3/q;

    invoke-direct {v2, v3, v1}, Lj3/r;-><init>(Lj3/q;Lj3/r0;)V

    invoke-interface {v0, v2}, Lj3/Q;->a(Lj3/r;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()J
    .locals 4

    iget-object v0, p0, Ls3/e;->c:Lj3/G;

    iget-object v0, v0, Lj3/G;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Ls3/e;->c:Lj3/G;

    iget-object v2, v2, Lj3/G;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Ls3/e;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Ls3/e;->d:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "not currently ejected"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ls3/e;->d:Ljava/lang/Long;

    iget-object v0, p0, Ls3/e;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls3/k;

    iput-boolean v1, v2, Ls3/k;->c:Z

    iget-object v3, v2, Ls3/k;->d:Lj3/r;

    if-eqz v3, :cond_1

    iget-object v2, v2, Ls3/k;->e:Lj3/Q;

    invoke-interface {v2, v3}, Lj3/Q;->a(Lj3/r;)V

    goto :goto_1

    :cond_2
    return-void
.end method
