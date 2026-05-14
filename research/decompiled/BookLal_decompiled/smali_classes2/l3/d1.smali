.class public final Ll3/d1;
.super Lj3/S;
.source "SourceFile"


# instance fields
.field public final c:Lj3/i;

.field public d:Lj3/P;


# direct methods
.method public constructor <init>(Lj3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/d1;->c:Lj3/i;

    return-void
.end method


# virtual methods
.method public final a(Lj3/O;)Z
    .locals 5

    iget-object v0, p1, Lj3/O;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lj3/r0;->m:Lj3/r0;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NameResolver returned no usable address. addrs="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", attrs="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lj3/O;->b:Lj3/b;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll3/d1;->c(Lj3/r0;)V

    return v2

    :cond_0
    iget-object p1, p0, Ll3/d1;->d:Lj3/P;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    sget-object p1, Lj3/b;->b:Lj3/b;

    const/4 v3, 0x2

    new-array v4, v3, [I

    aput v3, v4, v1

    aput v2, v4, v2

    const-class v2, Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    const-string v4, "addrs is empty"

    invoke-static {v3, v4}, LZ2/l;->f(ZLjava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v3, LJ2/e;

    invoke-direct {v3, v0, p1, v2}, LJ2/e;-><init>(Ljava/util/List;Lj3/b;[[Ljava/lang/Object;)V

    iget-object p1, p0, Ll3/d1;->c:Lj3/i;

    invoke-virtual {p1, v3}, Lj3/i;->a(LJ2/e;)Lj3/P;

    move-result-object v0

    new-instance v2, Ll3/R1;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0, v0}, Ll3/R1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lj3/P;->g(Lj3/Q;)V

    iput-object v0, p0, Ll3/d1;->d:Lj3/P;

    sget-object v2, Lj3/q;->a:Lj3/q;

    new-instance v3, Ll3/b1;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lj3/N;->b(Lj3/P;Ll3/t1;)Lj3/N;

    move-result-object v4

    invoke-direct {v3, v4}, Ll3/b1;-><init>(Lj3/N;)V

    invoke-virtual {p1, v2, v3}, Lj3/i;->i(Lj3/q;Lj3/B;)V

    invoke-virtual {v0}, Lj3/P;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lj3/P;->h(Ljava/util/List;)V

    :goto_0
    return v1
.end method

.method public final c(Lj3/r0;)V
    .locals 2

    iget-object v0, p0, Ll3/d1;->d:Lj3/P;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj3/P;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll3/d1;->d:Lj3/P;

    :cond_0
    sget-object v0, Lj3/q;->c:Lj3/q;

    new-instance v1, Ll3/b1;

    invoke-static {p1}, Lj3/N;->a(Lj3/r0;)Lj3/N;

    move-result-object p1

    invoke-direct {v1, p1}, Ll3/b1;-><init>(Lj3/N;)V

    iget-object p1, p0, Ll3/d1;->c:Lj3/i;

    invoke-virtual {p1, v0, v1}, Lj3/i;->i(Lj3/q;Lj3/B;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Ll3/d1;->d:Lj3/P;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj3/P;->e()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Ll3/d1;->d:Lj3/P;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj3/P;->f()V

    :cond_0
    return-void
.end method
