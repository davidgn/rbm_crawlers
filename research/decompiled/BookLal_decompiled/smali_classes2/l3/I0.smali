.class public final Ll3/I0;
.super Lj3/h;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:Ljava/lang/String;

.field public final c:Ll3/F0;

.field public final synthetic d:Ll3/L0;


# direct methods
.method public constructor <init>(Ll3/L0;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/I0;->d:Ll3/L0;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Ll3/L0;->j0:Ll3/x0;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ll3/I0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ll3/F0;

    invoke-direct {p1, p0}, Ll3/F0;-><init>(Ll3/I0;)V

    iput-object p1, p0, Ll3/I0;->c:Ll3/F0;

    const-string p1, "authority"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Ll3/I0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/I0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Lj3/h0;Lj3/g;)Lj3/k;
    .locals 6

    iget-object v0, p0, Ll3/I0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ll3/L0;->j0:Ll3/x0;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Ll3/I0;->h(Lj3/h0;Lj3/g;)Lj3/k;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Ll3/I0;->d:Ll3/L0;

    iget-object v3, v1, Ll3/L0;->m:Lj3/w0;

    new-instance v4, Ll3/G0;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Ll3/G0;-><init>(Ll3/I0;I)V

    invoke-virtual {v3, v4}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, p1, p2}, Ll3/I0;->h(Lj3/h0;Lj3/g;)Lj3/k;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, v1, Ll3/L0;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Ll3/E;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ll3/E;-><init>(I)V

    return-object p1

    :cond_2
    invoke-static {}, Lj3/u;->b()Lj3/u;

    move-result-object v0

    new-instance v2, Ll3/H0;

    invoke-direct {v2, p0, v0, p1, p2}, Ll3/H0;-><init>(Ll3/I0;Lj3/u;Lj3/h0;Lj3/g;)V

    new-instance p1, Ll3/B;

    invoke-direct {p1, p0, v2}, Ll3/B;-><init>(Ll3/I0;Ll3/H0;)V

    iget-object p2, v1, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {p2, p1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-object v2
.end method

.method public final h(Lj3/h0;Lj3/g;)Lj3/k;
    .locals 7

    iget-object v0, p0, Ll3/I0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lj3/H;

    iget-object v3, p0, Ll3/I0;->c:Ll3/F0;

    if-nez v2, :cond_0

    invoke-virtual {v3, p1, p2}, Ll3/F0;->g(Lj3/h0;Lj3/g;)Lj3/k;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, v2, Ll3/Q0;

    if-eqz v0, :cond_4

    check-cast v2, Ll3/Q0;

    iget-object v0, v2, Ll3/Q0;->b:Ll3/R0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lj3/h0;->b:Ljava/lang/String;

    iget-object v2, v0, Ll3/R0;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/P0;

    if-nez v1, :cond_1

    iget-object v1, v0, Ll3/R0;->c:Ljava/util/Map;

    iget-object v2, p1, Lj3/h0;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/P0;

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, Ll3/R0;->a:Ll3/P0;

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Ll3/P0;->g:LG3/b;

    invoke-virtual {p2, v0, v1}, Lj3/g;->c(LG3/b;Ljava/lang/Object;)Lj3/g;

    move-result-object p2

    :cond_3
    invoke-virtual {v3, p1, p2}, Ll3/F0;->g(Lj3/h0;Lj3/g;)Lj3/k;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Ll3/C0;

    iget-object v1, p0, Ll3/I0;->d:Ll3/L0;

    iget-object v4, v1, Ll3/L0;->h:Ljava/util/concurrent/Executor;

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Ll3/C0;-><init>(Lj3/H;Ll3/F0;Ljava/util/concurrent/Executor;Lj3/h0;Lj3/g;)V

    return-object v0
.end method

.method public final i(Lj3/H;)V
    .locals 2

    iget-object v0, p0, Ll3/I0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj3/H;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object p1, Ll3/L0;->j0:Ll3/x0;

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Ll3/I0;->d:Ll3/L0;

    iget-object p1, p1, Ll3/L0;->A:Ljava/util/LinkedHashSet;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/H0;

    invoke-virtual {v0}, Ll3/H0;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method
