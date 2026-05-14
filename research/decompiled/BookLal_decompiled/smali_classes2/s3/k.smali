.class public final Ls3/k;
.super Lj3/P;
.source "SourceFile"


# instance fields
.field public final a:Lj3/P;

.field public b:Ls3/e;

.field public c:Z

.field public d:Lj3/r;

.field public e:Lj3/Q;

.field public final synthetic f:Ls3/l;


# direct methods
.method public constructor <init>(Ls3/l;Lj3/P;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/k;->f:Ls3/l;

    iput-object p2, p0, Ls3/k;->a:Lj3/P;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ls3/k;->a:Lj3/P;

    invoke-virtual {v0}, Lj3/P;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lj3/b;
    .locals 5

    iget-object v0, p0, Ls3/k;->b:Ls3/e;

    iget-object v1, p0, Ls3/k;->a:Lj3/P;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lj3/P;->c()Lj3/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ls3/l;->j:Lj3/a;

    iget-object v2, p0, Ls3/k;->b:Ls3/e;

    new-instance v3, Ljava/util/IdentityHashMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-virtual {v3, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lj3/b;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj3/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Lj3/b;

    invoke-direct {v0, v3}, Lj3/b;-><init>(Ljava/util/IdentityHashMap;)V

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lj3/P;->c()Lj3/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls3/k;->a:Lj3/P;

    invoke-virtual {v0}, Lj3/P;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Ls3/k;->a:Lj3/P;

    invoke-virtual {v0}, Lj3/P;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Ls3/k;->a:Lj3/P;

    invoke-virtual {v0}, Lj3/P;->f()V

    return-void
.end method

.method public final g(Lj3/Q;)V
    .locals 3

    iput-object p1, p0, Ls3/k;->e:Lj3/Q;

    new-instance v0, Lj3/G;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lj3/G;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, Ls3/k;->a:Lj3/P;

    invoke-virtual {p1, v0}, Lj3/P;->g(Lj3/Q;)V

    return-void
.end method

.method public final h(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Ls3/k;->a:Lj3/P;

    invoke-virtual {v0}, Lj3/P;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ls3/l;->g(Ljava/util/List;)Z

    move-result v1

    iget-object v2, p0, Ls3/k;->f:Ls3/l;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1}, Ls3/l;->g(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Ls3/l;->c:Ls3/f;

    iget-object v5, p0, Ls3/k;->b:Ls3/e;

    iget-object v1, v1, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ls3/k;->b:Ls3/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p0, Ls3/k;->b:Ls3/e;

    iget-object v1, v1, Ls3/e;->f:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj3/y;

    iget-object v1, v1, Lj3/y;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    iget-object v3, v2, Ls3/l;->c:Ls3/f;

    iget-object v3, v3, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v2, Ls3/l;->c:Ls3/f;

    iget-object v2, v2, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/e;

    invoke-virtual {v1, p0}, Ls3/e;->a(Ls3/k;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Lj3/P;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ls3/l;->g(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Ls3/l;->g(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v2, Ls3/l;->c:Ls3/f;

    invoke-virtual {p0}, Lj3/P;->a()Lj3/y;

    move-result-object v5

    iget-object v5, v5, Lj3/y;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v1, v1, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Ls3/l;->c:Ls3/f;

    invoke-virtual {p0}, Lj3/P;->a()Lj3/y;

    move-result-object v2

    iget-object v2, v2, Lj3/y;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v1, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p0, Ls3/k;->b:Ls3/e;

    iget-object v2, v1, Ls3/e;->f:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Ls3/e;->b:Lj3/G;

    iget-object v3, v2, Lj3/G;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v2, v2, Lj3/G;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v1, v1, Ls3/e;->c:Lj3/G;

    iget-object v2, v1, Lj3/G;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v1, v1, Lj3/G;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lj3/P;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ls3/l;->g(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Ls3/l;->g(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj3/y;

    iget-object v1, v1, Lj3/y;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    iget-object v3, v2, Ls3/l;->c:Ls3/f;

    iget-object v3, v3, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v2, Ls3/l;->c:Ls3/f;

    iget-object v2, v2, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/e;

    invoke-virtual {v1, p0}, Ls3/e;->a(Ls3/k;)V

    :cond_3
    :goto_0
    invoke-virtual {v0, p1}, Lj3/P;->h(Ljava/util/List;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "delegate"

    iget-object v2, p0, Ls3/k;->a:Lj3/P;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
