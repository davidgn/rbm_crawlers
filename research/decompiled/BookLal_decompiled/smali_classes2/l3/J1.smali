.class public abstract Ll3/J1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/O1;


# static fields
.field public static final a:Lj3/a;

.field public static final b:Lj3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj3/a;

    const-string v1, "io.grpc.internal.GrpcAttributes.securityLevel"

    invoke-direct {v0, v1}, Lj3/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ll3/J1;->a:Lj3/a;

    new-instance v0, Lj3/a;

    const-string v1, "io.grpc.internal.GrpcAttributes.clientEagAttrs"

    invoke-direct {v0, v1}, Lj3/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ll3/J1;->b:Lj3/a;

    return-void
.end method

.method public static p()Ll3/w0;
    .locals 2

    sget-object v0, Ll3/k1;->e:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    new-instance v0, Ll3/k1;

    invoke-direct {v0}, Ll3/k1;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ll3/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/e;-><init>(I)V

    return-object v0
.end method

.method public static q(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Set;
    .locals 7

    invoke-static {p0, p1}, Ll3/r0;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class p1, Lj3/q0;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    int-to-double v3, v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v6, "Status code %s is not integral"

    invoke-static {v3, v6, v0}, Landroid/support/v4/media/session/a;->B(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lj3/r0;->d(I)Lj3/r0;

    move-result-object v2

    iget-object v2, v2, Lj3/r0;->a:Lj3/q0;

    iget v3, v2, Lj3/q0;->a:I

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    if-ne v3, v1, :cond_2

    move v4, v5

    :cond_2
    const-string v1, "Status code %s is not valid"

    invoke-static {v4, v1, v0}, Landroid/support/v4/media/session/a;->B(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lj3/q0;->valueOf(Ljava/lang/String;)Lj3/q0;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, LB0/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Status code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not valid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, v0, p0, v1}, LB0/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_4
    new-instance p0, LB0/c;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Can not convert status code "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to Status.Code, because its type is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, LB0/c;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/util/Map;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "loadBalancingConfig"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, p0}, Ll3/r0;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ll3/r0;->a(Ljava/util/List;)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "loadBalancingPolicy"

    invoke-static {v1, p0}, Ll3/r0;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/util/List;Lj3/U;)Lj3/i0;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/H1;

    iget-object v2, v1, Ll3/H1;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lj3/U;->b(Ljava/lang/String;)Lj3/T;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const-class p0, Ll3/J1;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p0

    sget-object p1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "{0} specified by Service Config are not available"

    invoke-virtual {p0, p1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object p0, v1, Ll3/H1;->b:Ljava/util/Map;

    invoke-virtual {v3, p0}, Lj3/T;->e(Ljava/util/Map;)Lj3/i0;

    move-result-object p0

    iget-object p1, p0, Lj3/i0;->a:Lj3/r0;

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    new-instance p1, Ll3/I1;

    iget-object p0, p0, Lj3/i0;->b:Ljava/lang/Object;

    invoke-direct {p1, v3, p0}, Ll3/I1;-><init>(Lj3/T;Ljava/lang/Object;)V

    new-instance p0, Lj3/i0;

    invoke-direct {p0, p1}, Lj3/i0;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_3
    sget-object p0, Lj3/r0;->g:Lj3/r0;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "None of "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " specified by Service Config are available."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p0

    new-instance p1, Lj3/i0;

    invoke-direct {p1, p0}, Lj3/i0;-><init>(Lj3/r0;)V

    return-object p1
.end method

.method public static w(Ljava/util/List;)Ljava/util/List;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ll3/H1;

    invoke-static {v2, v1}, Ll3/r0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Ll3/H1;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "There are "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fields in a LoadBalancingConfig object. Exactly one is expected. Config="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lj3/o;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Ll3/b;

    iget-object v0, v0, Ll3/b;->d:Ll3/Y;

    invoke-interface {v0, p1}, Ll3/Y;->a(Lj3/o;)Ll3/Y;

    return-void
.end method

.method public b(Z)V
    .locals 1

    move-object v0, p0

    check-cast v0, Ll3/b;

    iget-object v0, v0, Ll3/b;->d:Ll3/Y;

    invoke-interface {v0, p1}, Ll3/Y;->b(Z)Ll3/Y;

    return-void
.end method

.method public f(Lq3/a;)V
    .locals 1

    :try_start_0
    move-object v0, p0

    check-cast v0, Ll3/b;

    iget-object v0, v0, Ll3/b;->d:Ll3/Y;

    invoke-interface {v0}, Ll3/Y;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Ll3/b;

    iget-object v0, v0, Ll3/b;->d:Ll3/Y;

    invoke-interface {v0, p1}, Ll3/Y;->d(Lq3/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {p1}, Ll3/b0;->b(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Ll3/b0;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method public flush()V
    .locals 2

    move-object v0, p0

    check-cast v0, Ll3/b;

    iget-object v0, v0, Ll3/b;->d:Ll3/Y;

    invoke-interface {v0}, Ll3/Y;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ll3/Y;->flush()V

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 3

    move-object v0, p0

    check-cast v0, Lm3/j;

    iget-object v0, v0, Lm3/j;->n:Lm3/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ly3/b;->a()V

    new-instance v1, LJ/a;

    const/4 v2, 0x4

    invoke-direct {v1, v0, p1, v2}, LJ/a;-><init>(Ljava/lang/Object;II)V

    iget-object p1, v0, Lm3/i;->w:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public o()V
    .locals 2

    move-object v0, p0

    check-cast v0, Lm3/j;

    iget-object v0, v0, Lm3/j;->n:Lm3/i;

    iget-object v1, v0, Ll3/a;->d:Ll3/V0;

    iput-object v0, v1, Ll3/V0;->a:Ll3/a;

    iput-object v1, v0, Ll3/a;->a:Ll3/V0;

    return-void
.end method

.method public abstract s()I
.end method

.method public abstract t(Ll3/G1;)Z
.end method

.method public abstract u(Ll3/G1;)V
.end method
